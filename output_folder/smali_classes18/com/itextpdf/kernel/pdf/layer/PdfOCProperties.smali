.class public Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;
.super Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;
.source "PdfOCProperties.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
        "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
        ">;"
    }
.end annotation


# static fields
.field static final OC_CONFIG_NAME_PATTERN:Ljava/lang/String; = "OCConfigName"

.field private static final serialVersionUID:J = 0xfcae877453b59e6L


# instance fields
.field private layers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/layer/PdfLayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 1
    .param p1, "ocPropertiesDict"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 92
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->layers:Ljava/util/List;

    .line 93
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->ensureObjectIsAddedToDocument(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 94
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->readLayersFromDictionary()V

    .line 95
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 82
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 83
    return-void
.end method

.method private addASEvent(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)V
    .locals 6
    .param p1, "event"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .param p2, "category"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 320
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 321
    .local v0, "arr":Lcom/itextpdf/kernel/pdf/PdfArray;
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->layers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;

    .line 322
    .local v2, "layer":Lcom/itextpdf/kernel/pdf/layer/PdfLayer;
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isFlushed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 323
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Usage:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    .line 324
    .local v3, "usage":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v3, :cond_0

    invoke-virtual {v3, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 325
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 327
    .end local v2    # "layer":Lcom/itextpdf/kernel/pdf/layer/PdfLayer;
    .end local v3    # "usage":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_0
    goto :goto_0

    .line 328
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 329
    return-void

    .line 330
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 331
    .local v1, "d":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->AS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    .line 332
    .local v2, "arras":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-nez v2, :cond_3

    .line 333
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    move-object v2, v3

    .line 334
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->AS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v3, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 336
    :cond_3
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 337
    .local v3, "as":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Event:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 338
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v4}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 339
    .local v4, "categoryArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-virtual {v4, p2}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 340
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Category:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v5, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 341
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->OCGs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v5, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 342
    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 343
    return-void
.end method

.method private createUniqueName()Ljava/lang/String;
    .locals 6

    .line 439
    const/4 v0, 0x0

    .line 440
    .local v0, "uniqueID":I
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 441
    .local v1, "usedNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Configs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    .line 442
    .local v2, "configs":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz v2, :cond_1

    .line 443
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 444
    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v4

    .line 445
    .local v4, "alternateDictionary":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v4, :cond_0

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Name:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 446
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Name:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 443
    .end local v4    # "alternateDictionary":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 450
    .end local v3    # "i":I
    :cond_1
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OCConfigName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 451
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 453
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getOCGOrder(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/layer/PdfLayer;)V
    .locals 5
    .param p0, "order"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .param p1, "layer"    # Lcom/itextpdf/kernel/pdf/layer/PdfLayer;

    .line 271
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;->isOnPanel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    return-void

    .line 273
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 274
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 275
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;->getChildren()Ljava/util/List;

    move-result-object v0

    .line 276
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/layer/PdfLayer;>;"
    if-nez v0, :cond_2

    .line 277
    return-void

    .line 278
    :cond_2
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 279
    .local v1, "kids":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 280
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;->getTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UnicodeBig"

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 281
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;

    .line 282
    .local v3, "child":Lcom/itextpdf/kernel/pdf/layer/PdfLayer;
    invoke-static {v1, v3}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->getOCGOrder(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/layer/PdfLayer;)V

    .line 283
    .end local v3    # "child":Lcom/itextpdf/kernel/pdf/layer/PdfLayer;
    goto :goto_0

    .line 284
    :cond_4
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 285
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 286
    :cond_5
    return-void
.end method

.method private readLayersFromDictionary()V
    .locals 10

    .line 349
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->OCGs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 350
    .local v0, "ocgs":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_6

    .line 353
    :cond_0
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 354
    .local v1, "layerMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/layer/PdfLayer;>;"
    const/4 v2, 0x0

    .local v2, "ind":I
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_1

    .line 355
    new-instance v3, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v5

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v3, v5}, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 357
    .local v3, "currentLayer":Lcom/itextpdf/kernel/pdf/layer/PdfLayer;
    iput-boolean v4, v3, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;->onPanel:Z

    .line 358
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    .end local v3    # "currentLayer":Lcom/itextpdf/kernel/pdf/layer/PdfLayer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 361
    .end local v2    # "ind":I
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    .line 362
    .local v2, "d":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 363
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->OFF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v3

    .line 364
    .local v3, "off":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz v3, :cond_3

    .line 365
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 366
    invoke-virtual {v3, v5, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(IZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    .line 367
    .local v6, "offLayer":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfObject;->isIndirectReference()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 368
    move-object v7, v6

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;

    iput-boolean v4, v7, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;->on:Z

    goto :goto_2

    .line 370
    :cond_2
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;

    iput-boolean v4, v7, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;->on:Z

    .line 365
    .end local v6    # "offLayer":Lcom/itextpdf/kernel/pdf/PdfObject;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 375
    .end local v5    # "i":I
    :cond_3
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Locked:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v5

    .line 376
    .local v5, "locked":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz v5, :cond_5

    .line 377
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 378
    invoke-virtual {v5, v6, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(IZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    .line 379
    .local v7, "lockedLayer":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfObject;->isIndirectReference()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_4

    .line 380
    move-object v8, v7

    check-cast v8, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;

    iput-boolean v9, v8, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;->locked:Z

    goto :goto_4

    .line 382
    :cond_4
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;

    iput-boolean v9, v8, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;->locked:Z

    .line 377
    .end local v7    # "lockedLayer":Lcom/itextpdf/kernel/pdf/PdfObject;
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 387
    .end local v6    # "i":I
    :cond_5
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Order:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v4

    .line 388
    .local v4, "orderArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 389
    const/4 v6, 0x0

    invoke-direct {p0, v6, v4, v1}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->readOrderFromDictionary(Lcom/itextpdf/kernel/pdf/layer/PdfLayer;Lcom/itextpdf/kernel/pdf/PdfArray;Ljava/util/Map;)V

    .line 393
    .end local v3    # "off":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v4    # "orderArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v5    # "locked":Lcom/itextpdf/kernel/pdf/PdfArray;
    :cond_6
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;

    .line 394
    .local v4, "layer":Lcom/itextpdf/kernel/pdf/layer/PdfLayer;
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;->isOnPanel()Z

    move-result v5

    if-nez v5, :cond_7

    .line 395
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->layers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    .end local v4    # "layer":Lcom/itextpdf/kernel/pdf/layer/PdfLayer;
    :cond_7
    goto :goto_5

    .line 397
    :cond_8
    return-void

    .line 351
    .end local v1    # "layerMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/layer/PdfLayer;>;"
    .end local v2    # "d":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_9
    :goto_6
    return-void
.end method

.method private readOrderFromDictionary(Lcom/itextpdf/kernel/pdf/layer/PdfLayer;Lcom/itextpdf/kernel/pdf/PdfArray;Ljava/util/Map;)V
    .locals 8
    .param p1, "parent"    # Lcom/itextpdf/kernel/pdf/layer/PdfLayer;
    .param p2, "orderArray"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/layer/PdfLayer;",
            "Lcom/itextpdf/kernel/pdf/PdfArray;",
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            "Lcom/itextpdf/kernel/pdf/layer/PdfLayer;",
            ">;)V"
        }
    .end annotation

    .line 403
    .local p3, "layerMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/layer/PdfLayer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 404
    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    .line 405
    .local v1, "item":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v2

    const/4 v3, 0x3

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v2, v3, :cond_2

    .line 406
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;

    .line 407
    .local v2, "layer":Lcom/itextpdf/kernel/pdf/layer/PdfLayer;
    if-eqz v2, :cond_1

    .line 408
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->layers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    iput-boolean v6, v2, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;->onPanel:Z

    .line 410
    if-eqz p1, :cond_0

    .line 411
    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;->addChild(Lcom/itextpdf/kernel/pdf/layer/PdfLayer;)V

    .line 412
    :cond_0
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p2, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v3

    if-ne v3, v6, :cond_1

    .line 413
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p2, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsArray(I)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v3

    .line 414
    .local v3, "nextArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v7

    if-lez v7, :cond_1

    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v5

    if-eq v5, v4, :cond_1

    .line 415
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p2, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsArray(I)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v4

    invoke-direct {p0, v2, v4, p3}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->readOrderFromDictionary(Lcom/itextpdf/kernel/pdf/layer/PdfLayer;Lcom/itextpdf/kernel/pdf/PdfArray;Ljava/util/Map;)V

    .line 416
    add-int/lit8 v0, v0, 0x1

    .line 420
    .end local v2    # "layer":Lcom/itextpdf/kernel/pdf/layer/PdfLayer;
    .end local v3    # "nextArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    :cond_1
    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v2

    if-ne v2, v6, :cond_1

    .line 421
    move-object v2, v1

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 422
    .local v2, "subArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 423
    :cond_3
    invoke-virtual {v2, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    .line 424
    .local v3, "firstObj":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v5

    if-ne v5, v4, :cond_5

    .line 425
    move-object v4, v3

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;->createTitleSilent(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/layer/PdfLayer;

    move-result-object v4

    .line 426
    .local v4, "titleLayer":Lcom/itextpdf/kernel/pdf/layer/PdfLayer;
    iput-boolean v6, v4, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;->onPanel:Z

    .line 427
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->layers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    if-eqz p1, :cond_4

    .line 429
    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;->addChild(Lcom/itextpdf/kernel/pdf/layer/PdfLayer;)V

    .line 430
    :cond_4
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Ljava/util/List;)V

    invoke-direct {p0, v4, v5, p3}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->readOrderFromDictionary(Lcom/itextpdf/kernel/pdf/layer/PdfLayer;Lcom/itextpdf/kernel/pdf/PdfArray;Ljava/util/Map;)V

    .line 431
    .end local v4    # "titleLayer":Lcom/itextpdf/kernel/pdf/layer/PdfLayer;
    goto :goto_1

    .line 432
    :cond_5
    invoke-direct {p0, p1, v2, p3}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->readOrderFromDictionary(Lcom/itextpdf/kernel/pdf/layer/PdfLayer;Lcom/itextpdf/kernel/pdf/PdfArray;Ljava/util/Map;)V

    .line 403
    .end local v1    # "item":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v2    # "subArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v3    # "firstObj":Lcom/itextpdf/kernel/pdf/PdfObject;
    :goto_1
    add-int/2addr v0, v6

    goto/16 :goto_0

    .line 436
    .end local v0    # "i":I
    :cond_6
    return-void
.end method

.method private removeNotRegisteredOcgs()V
    .locals 9

    .line 289
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 291
    .local v0, "dDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->OCProperties:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 292
    .local v1, "ocProperties":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 293
    .local v2, "ocgsFromDocument":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->OCGs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 294
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->OCGs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v3

    .line 295
    .local v3, "ocgs":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 296
    .local v5, "ocgObj":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 297
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 299
    .end local v5    # "ocgObj":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_0
    goto :goto_0

    .line 303
    .end local v3    # "ocgs":Lcom/itextpdf/kernel/pdf/PdfArray;
    :cond_1
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->RBGroups:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v3

    .line 304
    .local v3, "rbGroups":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz v3, :cond_4

    .line 305
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 306
    .local v5, "rbGroupObj":Lcom/itextpdf/kernel/pdf/PdfObject;
    move-object v6, v5

    check-cast v6, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 307
    .local v6, "rbGroup":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .local v7, "i":I
    :goto_2
    const/4 v8, -0x1

    if-le v7, v8, :cond_3

    .line 308
    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 309
    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->remove(I)V

    .line 307
    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 312
    .end local v5    # "rbGroupObj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v6    # "rbGroup":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v7    # "i":I
    :cond_3
    goto :goto_1

    .line 314
    :cond_4
    return-void
.end method


# virtual methods
.method public addOCGRadioGroup(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/layer/PdfLayer;",
            ">;)V"
        }
    .end annotation

    .line 107
    .local p1, "group":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/layer/PdfLayer;>;"
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 108
    .local v0, "ar":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;

    .line 109
    .local v2, "layer":Lcom/itextpdf/kernel/pdf/layer/PdfLayer;
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 110
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 111
    .end local v2    # "layer":Lcom/itextpdf/kernel/pdf/layer/PdfLayer;
    :cond_0
    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 113
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 114
    .local v1, "d":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-nez v1, :cond_2

    .line 115
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    move-object v1, v2

    .line 116
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 118
    :cond_2
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->RBGroups:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    .line 119
    .local v2, "radioButtonGroups":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-nez v2, :cond_3

    .line 120
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    move-object v2, v3

    .line 121
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->RBGroups:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v3, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 122
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_1

    .line 124
    :cond_3
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 126
    :goto_1
    invoke-virtual {v2, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 128
    .end local v1    # "d":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v2    # "radioButtonGroups":Lcom/itextpdf/kernel/pdf/PdfArray;
    :cond_4
    return-void
.end method

.method public fillDictionary()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 138
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->fillDictionary(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    return-object v0
.end method

.method public fillDictionary(Z)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 10
    .param p1, "removeNonDocumentOcgs"    # Z

    .line 151
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 152
    .local v0, "gr":Lcom/itextpdf/kernel/pdf/PdfArray;
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->layers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;

    .line 153
    .local v2, "layer":Lcom/itextpdf/kernel/pdf/layer/PdfLayer;
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 154
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 155
    .end local v2    # "layer":Lcom/itextpdf/kernel/pdf/layer/PdfLayer;
    :cond_0
    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->OCGs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 159
    const/4 v1, 0x0

    .line 160
    .local v1, "rbGroups":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    .line 161
    .local v2, "d":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v2, :cond_2

    .line 162
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->RBGroups:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    .line 165
    :cond_2
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    move-object v2, v3

    .line 166
    if-eqz v1, :cond_3

    .line 167
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->RBGroups:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 169
    :cond_3
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Name:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->createUniqueName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UnicodeBig"

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 171
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 174
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->layers:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 175
    .local v3, "docOrder":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/layer/PdfLayer;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 176
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;

    .line 177
    .local v5, "layer":Lcom/itextpdf/kernel/pdf/layer/PdfLayer;
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;->getParent()Lcom/itextpdf/kernel/pdf/layer/PdfLayer;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 178
    invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 179
    add-int/lit8 v4, v4, -0x1

    .line 175
    .end local v5    # "layer":Lcom/itextpdf/kernel/pdf/layer/PdfLayer;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 183
    .end local v4    # "i":I
    :cond_5
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v4}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 184
    .local v4, "order":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 185
    .local v6, "element":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;

    .line 186
    .local v7, "layer":Lcom/itextpdf/kernel/pdf/layer/PdfLayer;
    invoke-static {v4, v7}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->getOCGOrder(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/layer/PdfLayer;)V

    .line 187
    .end local v6    # "element":Ljava/lang/Object;
    .end local v7    # "layer":Lcom/itextpdf/kernel/pdf/layer/PdfLayer;
    goto :goto_2

    .line 188
    :cond_6
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Order:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v5, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 190
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v5}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 191
    .local v5, "off":Lcom/itextpdf/kernel/pdf/PdfArray;
    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->layers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 192
    .local v7, "element":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;

    .line 193
    .local v8, "layer":Lcom/itextpdf/kernel/pdf/layer/PdfLayer;
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;->getTitle()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_7

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;->isOn()Z

    move-result v9

    if-nez v9, :cond_7

    .line 194
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 195
    .end local v7    # "element":Ljava/lang/Object;
    .end local v8    # "layer":Lcom/itextpdf/kernel/pdf/layer/PdfLayer;
    :cond_7
    goto :goto_3

    .line 196
    :cond_8
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v6

    if-lez v6, :cond_9

    .line 197
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->OFF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v6, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_4

    .line 199
    :cond_9
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->OFF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 201
    :goto_4
    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v6}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 202
    .local v6, "locked":Lcom/itextpdf/kernel/pdf/PdfArray;
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->layers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;

    .line 203
    .restart local v8    # "layer":Lcom/itextpdf/kernel/pdf/layer/PdfLayer;
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;->getTitle()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_a

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;->isLocked()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 204
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 205
    .end local v8    # "layer":Lcom/itextpdf/kernel/pdf/layer/PdfLayer;
    :cond_a
    goto :goto_5

    .line 206
    :cond_b
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v7

    if-lez v7, :cond_c

    .line 207
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Locked:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v7, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_6

    .line 209
    :cond_c
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Locked:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 211
    :goto_6
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->AS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 212
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->View:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Zoom:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p0, v7, v8}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->addASEvent(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 213
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->View:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->View:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p0, v7, v8}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->addASEvent(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 214
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Print:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Print:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p0, v7, v8}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->addASEvent(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 215
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Export:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Export:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p0, v7, v8}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->addASEvent(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 217
    if-eqz p1, :cond_d

    .line 218
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->removeNotRegisteredOcgs()V

    .line 221
    :cond_d
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    return-object v7
.end method

.method public flush()V
    .locals 0

    .line 226
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->fillDictionary()Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 227
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;->flush()V

    .line 228
    return-void
.end method

.method protected getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;
    .locals 1

    .line 263
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    return-object v0
.end method

.method public getLayers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/layer/PdfLayer;",
            ">;"
        }
    .end annotation

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->layers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected isWrappedObjectMustBeIndirect()Z
    .locals 1

    .line 242
    const/4 v0, 0x1

    return v0
.end method

.method protected registerLayer(Lcom/itextpdf/kernel/pdf/layer/PdfLayer;)V
    .locals 2
    .param p1, "layer"    # Lcom/itextpdf/kernel/pdf/layer/PdfLayer;

    .line 252
    if-eqz p1, :cond_0

    .line 254
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->layers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    return-void

    .line 253
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "layer argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
