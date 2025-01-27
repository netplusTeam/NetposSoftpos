.class public Lcom/itextpdf/kernel/pdf/PageFlushingHelper;
.super Ljava/lang/Object;
.source "PageFlushingHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final pageContext:Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;


# instance fields
.field private currNestedObjParents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;"
        }
    .end annotation
.end field

.field private layersRefs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            ">;"
        }
    .end annotation
.end field

.field private pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field private release:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 102
    nop

    .line 107
    invoke-static {}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->initPageFlushingContext()Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->pageContext:Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;

    .line 108
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1
    .param p1, "pdfDoc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->currNestedObjParents:Ljava/util/HashSet;

    .line 116
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->layersRefs:Ljava/util/Set;

    .line 120
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 121
    return-void
.end method

.method private arrayFlushIfModified(Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 2
    .param p1, "contentsArr"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 425
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 426
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(IZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    .line 427
    .local v1, "c":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->flushIfModified(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 425
    .end local v1    # "c":Lcom/itextpdf/kernel/pdf/PdfObject;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 429
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private flushDictRecursively(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;)V
    .locals 4
    .param p1, "dict"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "context"    # Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;

    .line 386
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 387
    .local v1, "key":Lcom/itextpdf/kernel/pdf/PdfName;
    const/4 v2, 0x0

    .line 388
    .local v2, "innerContext":Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;
    if-eqz p2, :cond_1

    .line 389
    invoke-virtual {p2, v1}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;->isKeyInBlackList(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 390
    goto :goto_0

    .line 392
    :cond_0
    invoke-virtual {p2, v1}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;->getInnerContextFor(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;

    move-result-object v2

    .line 394
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    .line 395
    .local v3, "value":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-direct {p0, v3, v2}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->flushObjectRecursively(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;)V

    .line 396
    .end local v1    # "key":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local v2    # "innerContext":Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;
    .end local v3    # "value":Lcom/itextpdf/kernel/pdf/PdfObject;
    goto :goto_0

    .line 397
    :cond_2
    return-void
.end method

.method private flushIfModified(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 1
    .param p1, "o"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 415
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    if-nez v0, :cond_0

    .line 416
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->makeIndirectIfNeeded(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 417
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object p1

    .line 419
    :cond_0
    if-eqz p1, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->checkState(S)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->checkState(S)Z

    move-result v0

    if-nez v0, :cond_1

    .line 420
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->flush()V

    .line 422
    :cond_1
    return-void
.end method

.method private flushObjectRecursively(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;)V
    .locals 4
    .param p1, "obj"    # Lcom/itextpdf/kernel/pdf/PdfObject;
    .param p2, "context"    # Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;

    .line 339
    if-nez p1, :cond_0

    .line 340
    return-void

    .line 342
    :cond_0
    const/4 v0, 0x0

    .line 343
    .local v0, "avoidReleaseForIndirectObjInstance":Z
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isIndirectReference()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 344
    move-object v1, p1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 345
    .local v1, "indRef":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    iget-object v2, v1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->refersTo:Lcom/itextpdf/kernel/pdf/PdfObject;

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 349
    :cond_1
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    .line 350
    .end local v1    # "indRef":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    goto :goto_2

    .line 346
    .restart local v1    # "indRef":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    :cond_2
    :goto_0
    return-void

    .line 350
    .end local v1    # "indRef":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    :cond_3
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isFlushed()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 351
    return-void

    .line 352
    :cond_4
    iget-boolean v1, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->release:Z

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isIndirect()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 356
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isReleaseForbidden()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 357
    :cond_6
    :goto_1
    const/4 v0, 0x1

    .line 359
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isDocumentFont(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->layersRefs:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_6

    .line 363
    :cond_8
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isStream()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_4

    .line 369
    :cond_9
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 370
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->currNestedObjParents:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 371
    return-void

    .line 373
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 374
    .local v1, "array":Lcom/itextpdf/kernel/pdf/PdfArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    .line 375
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(IZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->flushObjectRecursively(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;)V

    .line 374
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 377
    .end local v2    # "i":I
    :cond_b
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->currNestedObjParents:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 364
    .end local v1    # "array":Lcom/itextpdf/kernel/pdf/PdfArray;
    :cond_c
    :goto_4
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->currNestedObjParents:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 365
    return-void

    .line 367
    :cond_d
    move-object v1, p1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p0, v1, p2}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->flushDictRecursively(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;)V

    .line 368
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->currNestedObjParents:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 380
    :cond_e
    :goto_5
    if-nez v0, :cond_f

    .line 381
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->flushOrRelease(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 383
    :cond_f
    return-void

    .line 360
    :cond_10
    :goto_6
    return-void
.end method

.method private flushOrRelease(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 1
    .param p1, "obj"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 400
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->release:Z

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isReleaseForbidden()Z

    move-result v0

    if-nez v0, :cond_3

    .line 402
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->release()V

    goto :goto_1

    .line 405
    :cond_0
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->makeIndirectIfNeeded(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 406
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isAppendMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isModified()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 408
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isReleaseForbidden()Z

    move-result v0

    if-nez v0, :cond_3

    .line 409
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->release()V

    goto :goto_1

    .line 407
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->flush()V

    .line 412
    :cond_3
    :goto_1
    return-void
.end method

.method private flushPage(I)Z
    .locals 7
    .param p1, "pageNum"    # I

    .line 271
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v0

    .line 272
    .local v0, "page":Lcom/itextpdf/kernel/pdf/PdfPage;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->isFlushed()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 273
    return v2

    .line 275
    :cond_0
    const/4 v1, 0x0

    .line 277
    .local v1, "pageChanged":Z
    iget-boolean v3, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->release:Z

    if-nez v3, :cond_1

    .line 278
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    new-instance v4, Lcom/itextpdf/kernel/events/PdfDocumentEvent;

    const-string v5, "EndPdfPage"

    invoke-direct {v4, v5, v0}, Lcom/itextpdf/kernel/events/PdfDocumentEvent;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfPage;)V

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDocument;->dispatchEvent(Lcom/itextpdf/kernel/events/Event;)V

    .line 279
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {p0, v3}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->initCurrentLayers(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 282
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 286
    .local v3, "pageDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfPage;->initResources(Z)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v4

    .line 287
    .local v4, "resourcesDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfPage;->getResources(Z)Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v2

    .line 288
    .local v2, "resources":Lcom/itextpdf/kernel/pdf/PdfResources;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfResources;->isModified()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfResources;->isReadOnly()Z

    move-result v5

    if-nez v5, :cond_2

    .line 289
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 290
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Resources:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 291
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 292
    const/4 v1, 0x1

    .line 295
    :cond_2
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isFlushed()Z

    move-result v5

    if-nez v5, :cond_3

    .line 296
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->flushDictRecursively(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;)V

    .line 297
    invoke-direct {p0, v4}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->flushOrRelease(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 300
    :cond_3
    sget-object v5, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->pageContext:Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;

    invoke-direct {p0, v3, v5}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->flushDictRecursively(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;)V

    .line 302
    iget-boolean v5, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->release:Z

    if-eqz v5, :cond_4

    .line 303
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isModified()Z

    move-result v5

    if-nez v5, :cond_8

    .line 304
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPageTree()Lcom/itextpdf/kernel/pdf/PdfPagesTree;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->releasePage(I)V

    .line 305
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->unsetForbidRelease()V

    .line 306
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->release()V

    goto :goto_1

    .line 309
    :cond_4
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->isFlushed()Z

    move-result v5

    if-nez v5, :cond_5

    .line 310
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->tryFlushPageTags()V

    .line 312
    :cond_5
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isAppendMode()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isModified()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_0

    .line 318
    :cond_6
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPageTree()Lcom/itextpdf/kernel/pdf/PdfPagesTree;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->releasePage(I)V

    .line 319
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->unsetForbidRelease()V

    .line 320
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->release()V

    goto :goto_1

    .line 313
    :cond_7
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->releaseInstanceFields()V

    .line 314
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->flush()V

    .line 324
    :cond_8
    :goto_1
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->layersRefs:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 326
    return v1
.end method

.method private initCurrentLayers(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 5
    .param p1, "pdfDoc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 330
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->isOCPropertiesMayHaveChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getOCProperties(Z)Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->getLayers()Ljava/util/List;

    move-result-object v0

    .line 332
    .local v0, "layers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/layer/PdfLayer;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;

    .line 333
    .local v2, "layer":Lcom/itextpdf/kernel/pdf/layer/PdfLayer;
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->layersRefs:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 334
    .end local v2    # "layer":Lcom/itextpdf/kernel/pdf/layer/PdfLayer;
    goto :goto_0

    .line 336
    .end local v0    # "layers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/layer/PdfLayer;>;"
    :cond_0
    return-void
.end method

.method private static initPageFlushingContext()Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;
    .locals 17

    .line 438
    const/4 v0, 0x0

    .line 439
    .local v0, "ALL_KEYS_IN_BLACK_LIST":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfName;>;"
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 443
    .local v1, "NO_INNER_CONTEXTS":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;>;"
    new-instance v2, Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;

    new-instance v3, Ljava/util/LinkedHashSet;

    const/16 v4, 0x8

    new-array v4, v4, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->SD:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Dp:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->B:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v9, 0x3

    aput-object v5, v4, v9

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Annotation:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v10, 0x4

    aput-object v5, v4, v10

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v11, 0x5

    aput-object v5, v4, v11

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->AN:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v12, 0x6

    aput-object v5, v4, v12

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->TA:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v12, 0x7

    aput-object v5, v4, v12

    .line 445
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, v3, v1}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;-><init>(Ljava/util/Set;Ljava/util/Map;)V

    .line 458
    .local v2, "actionContext":Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;
    new-instance v3, Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;

    invoke-direct {v3, v2}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;-><init>(Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;)V

    .line 466
    .local v3, "aaContext":Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 468
    .local v4, "annotInnerContexts":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;>;"
    new-instance v5, Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;

    new-instance v12, Ljava/util/LinkedHashSet;

    new-array v11, v11, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v13, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v13, v11, v6

    sget-object v13, Lcom/itextpdf/kernel/pdf/PdfName;->Popup:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v13, v11, v7

    sget-object v13, Lcom/itextpdf/kernel/pdf/PdfName;->Dest:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v13, v11, v8

    sget-object v13, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v13, v11, v9

    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v9, v11, v10

    .line 470
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v12, v9}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v5, v12, v4}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;-><init>(Ljava/util/Set;Ljava/util/Map;)V

    .line 481
    .local v5, "annotsContext":Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;
    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->A:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v9, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->PA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v9, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->AA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v9, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    new-instance v9, Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;

    new-instance v10, Ljava/util/LinkedHashSet;

    sget-object v11, Lcom/itextpdf/kernel/pdf/PdfName;->Pages:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 489
    invoke-static {v11}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v9, v10, v1}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;-><init>(Ljava/util/Set;Ljava/util/Map;)V

    .line 497
    .local v9, "sepInfoContext":Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;
    new-instance v10, Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;

    invoke-direct {v10, v0, v1}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;-><init>(Ljava/util/Set;Ljava/util/Map;)V

    .line 505
    .local v10, "bContext":Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    .line 507
    .local v11, "presStepsInnerContexts":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;>;"
    new-instance v12, Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;

    new-instance v13, Ljava/util/LinkedHashSet;

    sget-object v14, Lcom/itextpdf/kernel/pdf/PdfName;->Prev:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 509
    invoke-static {v14}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v12, v13, v11}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;-><init>(Ljava/util/Set;Ljava/util/Map;)V

    .line 515
    .local v12, "presStepsContext":Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;
    sget-object v13, Lcom/itextpdf/kernel/pdf/PdfName;->NA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v11, v13, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    sget-object v13, Lcom/itextpdf/kernel/pdf/PdfName;->PA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v11, v13, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    .line 523
    .local v13, "pageInnerContexts":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;>;"
    new-instance v14, Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;

    new-instance v15, Ljava/util/LinkedHashSet;

    new-array v8, v8, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v16, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v16, v8, v6

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->DPart:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v6, v8, v7

    .line 524
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v15, v6}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v14, v15, v13}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;-><init>(Ljava/util/Set;Ljava/util/Map;)V

    move-object v6, v14

    .line 531
    .local v6, "pageContext":Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Annots:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v13, v7, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->B:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v13, v7, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->AA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v13, v7, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->SeparationInfo:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v13, v7, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->PresSteps:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v13, v7, v12}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    return-object v6
.end method

.method private makeIndirectIfNeeded(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 1
    .param p1, "o"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 432
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->checkState(S)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 435
    :cond_0
    return-void
.end method


# virtual methods
.method public appendModeFlush(I)V
    .locals 8
    .param p1, "pageNum"    # I

    .line 214
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 218
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v0

    .line 219
    .local v0, "page":Lcom/itextpdf/kernel/pdf/PdfPage;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->isFlushed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    return-void

    .line 222
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    new-instance v2, Lcom/itextpdf/kernel/events/PdfDocumentEvent;

    const-string v3, "EndPdfPage"

    invoke-direct {v2, v3, v0}, Lcom/itextpdf/kernel/events/PdfDocumentEvent;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfPage;)V

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->dispatchEvent(Lcom/itextpdf/kernel/events/Event;)V

    .line 224
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isModified()Z

    move-result v1

    .line 225
    .local v1, "pageWasModified":Z
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 226
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->release:Z

    .line 227
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->flushPage(I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v2

    :goto_1
    move v1, v3

    .line 229
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Annots:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v3

    .line 230
    .local v3, "annots":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->isFlushed()Z

    move-result v5

    if-nez v5, :cond_3

    .line 231
    invoke-direct {p0, v3}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->arrayFlushIfModified(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 234
    :cond_3
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Thumb:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v6, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    .line 235
    .local v5, "thumb":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-direct {p0, v5}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->flushIfModified(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 237
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Contents:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v6, v7, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    .line 238
    .local v4, "contents":Lcom/itextpdf/kernel/pdf/PdfObject;
    instance-of v6, v4, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    const/16 v7, 0x8

    if-eqz v6, :cond_5

    .line 239
    invoke-virtual {v4, v7}, Lcom/itextpdf/kernel/pdf/PdfObject;->checkState(S)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v4, v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->checkState(S)Z

    move-result v2

    if-nez v2, :cond_7

    .line 240
    move-object v2, v4

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    .line 241
    .local v2, "contentsDirectObj":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 242
    move-object v6, v2

    check-cast v6, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {p0, v6}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->arrayFlushIfModified(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    goto :goto_2

    .line 245
    :cond_4
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->flush()V

    .line 247
    .end local v2    # "contentsDirectObj":Lcom/itextpdf/kernel/pdf/PdfObject;
    :goto_2
    goto :goto_3

    .line 248
    :cond_5
    instance-of v2, v4, Lcom/itextpdf/kernel/pdf/PdfArray;

    if-eqz v2, :cond_6

    .line 249
    move-object v2, v4

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {p0, v2}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->arrayFlushIfModified(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    goto :goto_3

    .line 250
    :cond_6
    instance-of v2, v4, Lcom/itextpdf/kernel/pdf/PdfStream;

    if-eqz v2, :cond_7

    .line 251
    invoke-direct {p0, v4}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->flushIfModified(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 258
    :cond_7
    :goto_3
    if-nez v1, :cond_8

    .line 259
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->clearState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 260
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPageTree()Lcom/itextpdf/kernel/pdf/PdfPagesTree;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->releasePage(I)V

    .line 261
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->unsetForbidRelease()V

    .line 262
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->release()V

    goto :goto_4

    .line 265
    :cond_8
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->releaseInstanceFields()V

    .line 266
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->flush()V

    .line 268
    :goto_4
    return-void

    .line 215
    .end local v0    # "page":Lcom/itextpdf/kernel/pdf/PdfPage;
    .end local v1    # "pageWasModified":Z
    .end local v3    # "annots":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v4    # "contents":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v5    # "thumb":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Flushing writes the object to the output stream and releases it from memory. It is only possible for documents that have a PdfWriter associated with them. Use PageFlushingHelper#releaseDeep method instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public releaseDeep(I)V
    .locals 1
    .param p1, "pageNum"    # I

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->release:Z

    .line 188
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->flushPage(I)Z

    .line 189
    return-void
.end method

.method public unsafeFlushDeep(I)V
    .locals 2
    .param p1, "pageNum"    # I

    .line 159
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->release:Z

    .line 163
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->flushPage(I)Z

    .line 164
    return-void

    .line 160
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Flushing writes the object to the output stream and releases it from memory. It is only possible for documents that have a PdfWriter associated with them. Use PageFlushingHelper#releaseDeep method instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
