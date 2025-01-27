.class final Lcom/itextpdf/kernel/pdf/OcgPropertiesCopier;
.super Ljava/lang/Object;
.source "OcgPropertiesCopier.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    const-class v0, Lcom/itextpdf/kernel/pdf/OcgPropertiesCopier;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/OcgPropertiesCopier;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method private static attemptToAddObjectToArray(Ljava/util/Set;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 2
    .param p1, "fromObj"    # Lcom/itextpdf/kernel/pdf/PdfObject;
    .param p2, "toArray"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .param p3, "toDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            "Lcom/itextpdf/kernel/pdf/PdfArray;",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            ")V"
        }
    .end annotation

    .line 287
    .local p0, "fromOcgsToCopy":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    .line 288
    .local v0, "fromObjRef":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    if-eqz v0, :cond_0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    const/4 v1, 0x0

    invoke-virtual {p1, p3, v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 291
    :cond_0
    return-void
.end method

.method private static copyDArrayField(Lcom/itextpdf/kernel/pdf/PdfName;Ljava/util/Set;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 21
    .param p0, "fieldToCopy"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .param p2, "fromDict"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p3, "toDict"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p4, "toDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            ")V"
        }
    .end annotation

    .line 295
    .local p1, "fromOcgsToCopy":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-virtual {v8, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    if-nez v1, :cond_0

    .line 296
    return-void

    .line 298
    :cond_0
    invoke-virtual {v8, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v11

    .line 300
    .local v11, "fromArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-virtual {v9, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    if-nez v1, :cond_1

    .line 301
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    invoke-virtual {v9, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 303
    :cond_1
    invoke-virtual {v9, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v6

    .line 305
    .local v6, "toArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v5, v1

    .line 306
    .local v5, "toOcgsToCopy":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 307
    .local v2, "fromRef":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-virtual {v3, v10, v4}, Lcom/itextpdf/kernel/pdf/PdfObject;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 308
    .end local v2    # "fromRef":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    goto :goto_0

    .line 309
    :cond_2
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Order:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_8

    .line 311
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v1

    .line 312
    .local v3, "removeIndex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v12

    if-ge v1, v12, :cond_4

    .line 313
    invoke-virtual {v6, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v18

    .line 314
    .local v18, "toOrderItem":Lcom/itextpdf/kernel/pdf/PdfObject;
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v12, v18

    move-object v13, v6

    move v14, v1

    move-object v15, v5

    invoke-static/range {v12 .. v17}, Lcom/itextpdf/kernel/pdf/OcgPropertiesCopier;->orderBranchContainsSetElements(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfArray;ILjava/util/Set;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfDocument;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 315
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    .end local v18    # "toOrderItem":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 318
    .end local v1    # "i":I
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-le v1, v2, :cond_5

    .line 319
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v6, v12}, Lcom/itextpdf/kernel/pdf/PdfArray;->remove(I)V

    .line 318
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 322
    .end local v1    # "i":I
    :cond_5
    invoke-virtual/range {p4 .. p4}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->OCProperties:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->OCGs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v12

    .line 324
    .local v12, "toOcgs":Lcom/itextpdf/kernel/pdf/PdfArray;
    const/4 v1, 0x0

    move v13, v1

    .local v13, "i":I
    :goto_3
    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v1

    if-ge v13, v1, :cond_7

    .line 325
    invoke-virtual {v11, v13}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v14

    .line 326
    .local v14, "fromOrderItem":Lcom/itextpdf/kernel/pdf/PdfObject;
    move-object v1, v14

    move-object v2, v11

    move-object v15, v3

    .end local v3    # "removeIndex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v15, "removeIndex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move v3, v13

    move v8, v4

    move-object/from16 v4, p1

    move-object/from16 v19, v5

    .end local v5    # "toOcgsToCopy":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    .local v19, "toOcgsToCopy":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    move-object v5, v12

    move-object/from16 v20, v6

    .end local v6    # "toArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    .local v20, "toArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    move-object/from16 v6, p4

    invoke-static/range {v1 .. v6}, Lcom/itextpdf/kernel/pdf/OcgPropertiesCopier;->orderBranchContainsSetElements(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfArray;ILjava/util/Set;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfDocument;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 327
    invoke-virtual {v14, v10, v8}, Lcom/itextpdf/kernel/pdf/PdfObject;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    move-object/from16 v3, v20

    .end local v20    # "toArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    .local v3, "toArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-virtual {v3, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_4

    .line 326
    .end local v3    # "toArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    .restart local v20    # "toArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    :cond_6
    move-object/from16 v3, v20

    .line 324
    .end local v14    # "fromOrderItem":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v20    # "toArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    .restart local v3    # "toArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    :goto_4
    add-int/lit8 v13, v13, 0x1

    move-object v6, v3

    move v4, v8

    move-object v3, v15

    move-object/from16 v5, v19

    move-object/from16 v8, p2

    goto :goto_3

    .end local v15    # "removeIndex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v19    # "toOcgsToCopy":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    .local v3, "removeIndex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v5    # "toOcgsToCopy":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    .restart local v6    # "toArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    :cond_7
    move-object v15, v3

    move-object/from16 v19, v5

    move-object v3, v6

    .line 334
    .end local v5    # "toOcgsToCopy":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    .end local v6    # "toArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v12    # "toOcgs":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v13    # "i":I
    .local v3, "toArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    .restart local v19    # "toOcgsToCopy":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    move-object/from16 v13, v19

    goto/16 :goto_c

    .end local v3    # "toArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v19    # "toOcgsToCopy":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    .restart local v5    # "toOcgsToCopy":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    .restart local v6    # "toArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    :cond_8
    move v8, v4

    move-object/from16 v19, v5

    move-object v3, v6

    .end local v5    # "toOcgsToCopy":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    .end local v6    # "toArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    .restart local v3    # "toArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    .restart local v19    # "toOcgsToCopy":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->RBGroups:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 336
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_5
    if-le v1, v2, :cond_b

    .line 337
    invoke-virtual {v3, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 338
    .local v4, "toRbGroup":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 339
    .local v6, "toRbGroupItemObj":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v12

    move-object/from16 v13, v19

    .end local v19    # "toOcgsToCopy":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    .local v13, "toOcgsToCopy":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    invoke-interface {v13, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 340
    invoke-virtual {v3, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->remove(I)V

    .line 341
    goto :goto_7

    .line 343
    .end local v6    # "toRbGroupItemObj":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_9
    move-object/from16 v19, v13

    goto :goto_6

    .line 338
    .end local v13    # "toOcgsToCopy":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    .restart local v19    # "toOcgsToCopy":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    :cond_a
    move-object/from16 v13, v19

    .line 336
    .end local v4    # "toRbGroup":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v19    # "toOcgsToCopy":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    .restart local v13    # "toOcgsToCopy":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    :goto_7
    add-int/lit8 v1, v1, -0x1

    move-object/from16 v19, v13

    goto :goto_5

    .end local v13    # "toOcgsToCopy":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    .restart local v19    # "toOcgsToCopy":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    :cond_b
    move-object/from16 v13, v19

    .line 347
    .end local v1    # "i":I
    .end local v19    # "toOcgsToCopy":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    .restart local v13    # "toOcgsToCopy":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 348
    .local v2, "fromRbGroupObj":Lcom/itextpdf/kernel/pdf/PdfObject;
    move-object v4, v2

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 349
    .local v4, "fromRbGroup":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 350
    .local v6, "fromRbGroupItemObj":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 351
    invoke-virtual {v4, v10, v8}, Lcom/itextpdf/kernel/pdf/PdfArray;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 352
    goto :goto_a

    .line 354
    .end local v6    # "fromRbGroupItemObj":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_c
    goto :goto_9

    .line 355
    .end local v2    # "fromRbGroupObj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v4    # "fromRbGroup":Lcom/itextpdf/kernel/pdf/PdfArray;
    :cond_d
    :goto_a
    goto :goto_8

    :cond_e
    goto :goto_c

    .line 360
    .end local v13    # "toOcgsToCopy":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    .restart local v19    # "toOcgsToCopy":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    :cond_f
    move-object/from16 v13, v19

    .end local v19    # "toOcgsToCopy":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    .restart local v13    # "toOcgsToCopy":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 361
    .local v2, "fromObj":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-static {v7, v2, v3, v10}, Lcom/itextpdf/kernel/pdf/OcgPropertiesCopier;->attemptToAddObjectToArray(Ljava/util/Set;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 362
    .end local v2    # "fromObj":Lcom/itextpdf/kernel/pdf/PdfObject;
    goto :goto_b

    .line 365
    :cond_10
    :goto_c
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 366
    invoke-virtual {v9, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 368
    :cond_11
    return-void
.end method

.method private static copyDDictionary(Ljava/util/Set;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 2
    .param p1, "fromDDict"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "toOcProperties"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p3, "toDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            ")V"
        }
    .end annotation

    .line 265
    .local p0, "fromOcgsToCopy":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-nez v0, :cond_0

    .line 266
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    invoke-virtual {p2, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 269
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 273
    .local v0, "toDDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Creator:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 275
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ON:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {v1, p0, p1, v0, p3}, Lcom/itextpdf/kernel/pdf/OcgPropertiesCopier;->copyDArrayField(Lcom/itextpdf/kernel/pdf/PdfName;Ljava/util/Set;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 276
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->OFF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {v1, p0, p1, v0, p3}, Lcom/itextpdf/kernel/pdf/OcgPropertiesCopier;->copyDArrayField(Lcom/itextpdf/kernel/pdf/PdfName;Ljava/util/Set;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 279
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Order:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {v1, p0, p1, v0, p3}, Lcom/itextpdf/kernel/pdf/OcgPropertiesCopier;->copyDArrayField(Lcom/itextpdf/kernel/pdf/PdfName;Ljava/util/Set;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 281
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->RBGroups:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {v1, p0, p1, v0, p3}, Lcom/itextpdf/kernel/pdf/OcgPropertiesCopier;->copyDArrayField(Lcom/itextpdf/kernel/pdf/PdfName;Ljava/util/Set;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 282
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Locked:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {v1, p0, p1, v0, p3}, Lcom/itextpdf/kernel/pdf/OcgPropertiesCopier;->copyDArrayField(Lcom/itextpdf/kernel/pdf/PdfName;Ljava/util/Set;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 283
    return-void
.end method

.method public static copyOCGProperties(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/Map;)V
    .locals 5
    .param p0, "fromDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "toDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            ">;)V"
        }
    .end annotation

    .line 72
    .local p2, "page2page":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/PdfPage;>;"
    :try_start_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->OCProperties:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 73
    .local v0, "toOcProperties":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    nop

    .line 74
    invoke-static {p2, v0}, Lcom/itextpdf/kernel/pdf/OcgPropertiesCopier;->getAllUsedNonFlushedOCGs(Ljava/util/Map;Lcom/itextpdf/kernel/pdf/PdfDictionary;)Ljava/util/Set;

    move-result-object v1

    .line 75
    .local v1, "fromOcgsToCopy":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    return-void

    .line 81
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->fillAndGetOcPropertiesDictionary()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    move-object v0, v2

    .line 82
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->OCProperties:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 83
    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    .line 85
    .local v2, "fromOcProperties":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-static {v1, v0, p1}, Lcom/itextpdf/kernel/pdf/OcgPropertiesCopier;->copyOCGs(Ljava/util/Set;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 87
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    invoke-static {v1, v3, v0, p1}, Lcom/itextpdf/kernel/pdf/OcgPropertiesCopier;->copyDDictionary(Ljava/util/Set;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v0    # "toOcProperties":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v1    # "fromOcgsToCopy":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    .end local v2    # "fromOcProperties":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lcom/itextpdf/kernel/pdf/OcgPropertiesCopier;->LOGGER:Lorg/slf4j/Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "OCG copying caused the following exception: {0}."

    invoke-static {v3, v2}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 92
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static copyOCGs(Ljava/util/Set;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 10
    .param p1, "toOcProperties"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "toDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            ")V"
        }
    .end annotation

    .line 211
    .local p0, "fromOcgsToCopy":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 212
    .local v0, "layerNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->OCGs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 213
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->OCGs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    .line 214
    .local v1, "toOcgs":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 215
    .local v3, "toOcgObj":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 216
    move-object v4, v3

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Name:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 218
    .end local v3    # "toOcgObj":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_0
    goto :goto_0

    .line 221
    .end local v1    # "toOcgs":Lcom/itextpdf/kernel/pdf/PdfArray;
    :cond_1
    const/4 v1, 0x0

    .line 222
    .local v1, "hasConflictingNames":Z
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 223
    .local v3, "fromOcgRef":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p2, v5}, Lcom/itextpdf/kernel/pdf/PdfObject;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 225
    .local v4, "toOcg":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Name:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v5

    .line 227
    .local v5, "currentLayerName":Ljava/lang/String;
    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 228
    const/4 v1, 0x1

    .line 229
    const/4 v6, 0x0

    .line 230
    .local v6, "i":I
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 231
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 233
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 234
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Name:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v8, Lcom/itextpdf/kernel/pdf/PdfString;

    const-string v9, "UnicodeBig"

    invoke-direct {v8, v5, v9}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7, v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 237
    .end local v6    # "i":I
    :cond_3
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->OCGs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v6

    if-nez v6, :cond_4

    .line 238
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->OCGs:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v7, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v7}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    invoke-virtual {p1, v6, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 240
    :cond_4
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->OCGs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 241
    .end local v3    # "fromOcgRef":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .end local v4    # "toOcg":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v5    # "currentLayerName":Ljava/lang/String;
    goto/16 :goto_1

    .line 243
    :cond_5
    if-eqz v1, :cond_6

    .line 244
    sget-object v2, Lcom/itextpdf/kernel/pdf/OcgPropertiesCopier;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "Document has conflicting names for optional content groups. Groups with conflicting names will be renamed"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 246
    :cond_6
    return-void
.end method

.method private static getAllUsedNonFlushedOCGs(Ljava/util/Map;Lcom/itextpdf/kernel/pdf/PdfDictionary;)Ljava/util/Set;
    .locals 16
    .param p1, "toOcProperties"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            ")",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            ">;"
        }
    .end annotation

    .line 96
    .local p0, "page2page":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/PdfPage;>;"
    move-object/from16 v0, p1

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 98
    .local v1, "fromUsedOcgs":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Lcom/itextpdf/kernel/pdf/PdfPage;

    invoke-interface {v2, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 99
    .local v2, "fromPages":[Lcom/itextpdf/kernel/pdf/PdfPage;
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    new-array v3, v3, [Lcom/itextpdf/kernel/pdf/PdfPage;

    invoke-interface {v4, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 100
    .local v3, "toPages":[Lcom/itextpdf/kernel/pdf/PdfPage;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_2

    .line 101
    aget-object v5, v2, v4

    .line 102
    .local v5, "fromPage":Lcom/itextpdf/kernel/pdf/PdfPage;
    aget-object v6, v3, v4

    .line 105
    .local v6, "toPage":Lcom/itextpdf/kernel/pdf/PdfPage;
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfPage;->getAnnotations()Ljava/util/List;

    move-result-object v7

    .line 106
    .local v7, "toAnnotations":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;>;"
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfPage;->getAnnotations()Ljava/util/List;

    move-result-object v8

    .line 107
    .local v8, "fromAnnotations":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;>;"
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 108
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->isFlushed()Z

    move-result v10

    if-nez v10, :cond_0

    .line 109
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 110
    .local v10, "toAnnotDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 111
    .local v11, "fromAnnotDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 112
    .local v12, "toAnnot":Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 113
    .local v13, "fromAnnot":Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isFlushed()Z

    move-result v14

    if-nez v14, :cond_0

    .line 114
    sget-object v14, Lcom/itextpdf/kernel/pdf/PdfName;->OC:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v10, v14}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v14

    sget-object v15, Lcom/itextpdf/kernel/pdf/PdfName;->OC:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 115
    invoke-virtual {v11, v15}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v15

    .line 114
    invoke-static {v14, v15, v1, v0}, Lcom/itextpdf/kernel/pdf/OcgPropertiesCopier;->getUsedNonFlushedOCGsFromOcDict(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;Ljava/util/Set;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 117
    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getNormalAppearanceObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v14

    .line 118
    invoke-virtual {v13}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getNormalAppearanceObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v15

    .line 117
    invoke-static {v14, v15, v1, v0}, Lcom/itextpdf/kernel/pdf/OcgPropertiesCopier;->getUsedNonFlushedOCGsFromXObject(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 119
    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getRolloverAppearanceObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v14

    .line 120
    invoke-virtual {v13}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getRolloverAppearanceObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v15

    .line 119
    invoke-static {v14, v15, v1, v0}, Lcom/itextpdf/kernel/pdf/OcgPropertiesCopier;->getUsedNonFlushedOCGsFromXObject(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 121
    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getDownAppearanceObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v14

    .line 122
    invoke-virtual {v13}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getDownAppearanceObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v15

    .line 121
    invoke-static {v14, v15, v1, v0}, Lcom/itextpdf/kernel/pdf/OcgPropertiesCopier;->getUsedNonFlushedOCGsFromXObject(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 107
    .end local v10    # "toAnnotDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v11    # "fromAnnotDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v12    # "toAnnot":Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .end local v13    # "fromAnnot":Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 127
    .end local v9    # "j":I
    :cond_1
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v10, Lcom/itextpdf/kernel/pdf/PdfName;->Resources:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v9, v10}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v9

    .line 128
    .local v9, "toResources":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v11, Lcom/itextpdf/kernel/pdf/PdfName;->Resources:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v10, v11}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v10

    .line 129
    .local v10, "fromResources":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-static {v9, v10, v1, v0}, Lcom/itextpdf/kernel/pdf/OcgPropertiesCopier;->getUsedNonFlushedOCGsFromResources(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 100
    .end local v5    # "fromPage":Lcom/itextpdf/kernel/pdf/PdfPage;
    .end local v6    # "toPage":Lcom/itextpdf/kernel/pdf/PdfPage;
    .end local v7    # "toAnnotations":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;>;"
    .end local v8    # "fromAnnotations":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;>;"
    .end local v9    # "toResources":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v10    # "fromResources":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 131
    .end local v4    # "i":I
    :cond_2
    return-object v1
.end method

.method private static getUsedNonFlushedOCGsFromOcDict(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;Ljava/util/Set;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 8
    .param p0, "toObj"    # Lcom/itextpdf/kernel/pdf/PdfObject;
    .param p1, "fromObj"    # Lcom/itextpdf/kernel/pdf/PdfObject;
    .param p3, "toOcProperties"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            ")V"
        }
    .end annotation

    .line 181
    .local p2, "fromUsedOcgs":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isFlushed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 182
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 183
    .local v0, "toCurrDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    move-object v1, p1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 184
    .local v1, "fromCurrDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    .line 185
    .local v2, "typeName":Lcom/itextpdf/kernel/pdf/PdfName;
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->OCG:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v3

    invoke-static {v3, p3}, Lcom/itextpdf/kernel/pdf/OcgPropertiesCopier;->ocgAlreadyInOCGs(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 186
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 187
    :cond_0
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->OCMD:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 188
    const/4 v3, 0x0

    .line 189
    .local v3, "toOcgs":Lcom/itextpdf/kernel/pdf/PdfArray;
    const/4 v4, 0x0

    .line 190
    .local v4, "fromOcgs":Lcom/itextpdf/kernel/pdf/PdfArray;
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->OCGs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 191
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v5}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    move-object v3, v5

    .line 192
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->OCGs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 194
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v5}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    move-object v4, v5

    .line 195
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->OCGs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_0

    .line 196
    :cond_1
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->OCGs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 197
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->OCGs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v3

    .line 198
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->OCGs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v4

    .line 201
    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->isFlushed()Z

    move-result v5

    if-nez v5, :cond_3

    .line 202
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 203
    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    invoke-static {v6, v7, p2, p3}, Lcom/itextpdf/kernel/pdf/OcgPropertiesCopier;->getUsedNonFlushedOCGsFromOcDict(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;Ljava/util/Set;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 202
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 208
    .end local v0    # "toCurrDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v1    # "fromCurrDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v2    # "typeName":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local v3    # "toOcgs":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v4    # "fromOcgs":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v5    # "i":I
    :cond_3
    :goto_2
    return-void
.end method

.method private static getUsedNonFlushedOCGsFromResources(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 6
    .param p0, "toResources"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p1, "fromResources"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p3, "toOcProperties"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            ")V"
        }
    .end annotation

    .line 136
    .local p2, "fromUsedOcgs":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isFlushed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Properties:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 139
    .local v0, "toProperties":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Properties:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 140
    .local v1, "fromProperties":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isFlushed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 141
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 142
    .local v3, "name":Lcom/itextpdf/kernel/pdf/PdfName;
    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    .line 143
    .local v4, "toCurrObj":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    .line 144
    .local v5, "fromCurrObj":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-static {v4, v5, p2, p3}, Lcom/itextpdf/kernel/pdf/OcgPropertiesCopier;->getUsedNonFlushedOCGsFromOcDict(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;Ljava/util/Set;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 145
    .end local v3    # "name":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local v4    # "toCurrObj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v5    # "fromCurrObj":Lcom/itextpdf/kernel/pdf/PdfObject;
    goto :goto_0

    .line 149
    :cond_0
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->XObject:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    .line 150
    .local v2, "toXObject":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->XObject:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    .line 151
    .local v3, "fromXObject":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-static {v2, v3, p2, p3}, Lcom/itextpdf/kernel/pdf/OcgPropertiesCopier;->getUsedNonFlushedOCGsFromXObject(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 153
    .end local v0    # "toProperties":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v1    # "fromProperties":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v2    # "toXObject":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v3    # "fromXObject":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_1
    return-void
.end method

.method private static getUsedNonFlushedOCGsFromXObject(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 6
    .param p0, "toXObject"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p1, "fromXObject"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p3, "toOcProperties"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            ")V"
        }
    .end annotation

    .line 157
    .local p2, "fromUsedOcgs":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isFlushed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 158
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isStream()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isFlushed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 160
    .local v0, "toStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    move-object v1, p1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 161
    .local v1, "fromStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->OC:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->OC:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 162
    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    .line 161
    invoke-static {v2, v3, p2, p3}, Lcom/itextpdf/kernel/pdf/OcgPropertiesCopier;->getUsedNonFlushedOCGsFromOcDict(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;Ljava/util/Set;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 163
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Resources:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Resources:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 164
    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    .line 163
    invoke-static {v2, v3, p2, p3}, Lcom/itextpdf/kernel/pdf/OcgPropertiesCopier;->getUsedNonFlushedOCGsFromResources(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 165
    .end local v0    # "toStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    .end local v1    # "fromStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    goto :goto_1

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

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

    .line 167
    .local v1, "name":Lcom/itextpdf/kernel/pdf/PdfName;
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    .line 168
    .local v2, "toCurrObj":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    .line 169
    .local v3, "fromCurrObj":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->isStream()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->isFlushed()Z

    move-result v4

    if-nez v4, :cond_1

    .line 170
    move-object v4, v2

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 171
    .local v4, "toStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    move-object v5, v3

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 172
    .local v5, "fromStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    invoke-static {v4, v5, p2, p3}, Lcom/itextpdf/kernel/pdf/OcgPropertiesCopier;->getUsedNonFlushedOCGsFromXObject(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 174
    .end local v1    # "name":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local v2    # "toCurrObj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v3    # "fromCurrObj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v4    # "toStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    .end local v5    # "fromStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    :cond_1
    goto :goto_0

    .line 177
    :cond_2
    :goto_1
    return-void
.end method

.method private static ocgAlreadyInOCGs(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z
    .locals 5
    .param p0, "toOcgRef"    # Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .param p1, "toOcProperties"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 249
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 250
    return v0

    .line 252
    :cond_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->OCGs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    .line 253
    .local v1, "toOcgs":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz v1, :cond_2

    .line 254
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 255
    .local v3, "toOcg":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 256
    const/4 v0, 0x1

    return v0

    .line 258
    .end local v3    # "toOcg":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_1
    goto :goto_0

    .line 260
    :cond_2
    return v0
.end method

.method private static orderBranchContainsSetElements(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfArray;ILjava/util/Set;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfDocument;)Z
    .locals 17
    .param p0, "arrayObj"    # Lcom/itextpdf/kernel/pdf/PdfObject;
    .param p1, "array"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .param p2, "currentIndex"    # I
    .param p4, "toOcgs"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .param p5, "toDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            "Lcom/itextpdf/kernel/pdf/PdfArray;",
            "I",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfArray;",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            ")Z"
        }
    .end annotation

    .line 372
    .local p3, "ocgs":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v1

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v1, :cond_4

    .line 373
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 374
    return v12

    .line 376
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v1

    sub-int/2addr v1, v12

    if-ge v8, v1, :cond_3

    add-int/lit8 v1, v8, 0x1

    invoke-virtual {v7, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 377
    add-int/lit8 v1, v8, 0x1

    invoke-virtual {v7, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsArray(I)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v12

    .line 378
    .local v12, "nextArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-virtual {v12, v11}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isString()Z

    move-result v1

    if-nez v1, :cond_2

    .line 379
    add-int/lit8 v3, v8, 0x1

    move-object v1, v12

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/itextpdf/kernel/pdf/OcgPropertiesCopier;->orderBranchContainsSetElements(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfArray;ILjava/util/Set;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfDocument;)Z

    move-result v1

    .line 381
    .local v1, "result":Z
    if-eqz v1, :cond_1

    if-eqz v10, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 385
    move-object/from16 v13, p5

    invoke-virtual {v0, v13, v11}, Lcom/itextpdf/kernel/pdf/PdfObject;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_0

    .line 381
    :cond_1
    move-object/from16 v13, p5

    .line 388
    :goto_0
    return v1

    .line 378
    .end local v1    # "result":Z
    :cond_2
    move-object/from16 v13, p5

    .line 390
    .end local v12    # "nextArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    goto :goto_2

    .line 376
    :cond_3
    move-object/from16 v13, p5

    goto :goto_2

    .line 392
    :cond_4
    move-object/from16 v13, p5

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 393
    move-object v14, v0

    check-cast v14, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 394
    .local v14, "arrayItem":Lcom/itextpdf/kernel/pdf/PdfArray;
    const/4 v1, 0x0

    move v15, v1

    .local v15, "i":I
    :goto_1
    invoke-virtual {v14}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v1

    if-ge v15, v1, :cond_6

    .line 395
    invoke-virtual {v14, v15}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v16

    .line 396
    .local v16, "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    move-object/from16 v1, v16

    move-object v2, v14

    move v3, v15

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/itextpdf/kernel/pdf/OcgPropertiesCopier;->orderBranchContainsSetElements(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfArray;ILjava/util/Set;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfDocument;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 397
    return v12

    .line 394
    .end local v16    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 401
    .end local v15    # "i":I
    :cond_6
    invoke-virtual {v14}, Lcom/itextpdf/kernel/pdf/PdfArray;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v14, v11}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isString()Z

    move-result v1

    if-nez v1, :cond_7

    .line 402
    if-lez v8, :cond_7

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {v7, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 403
    add-int/lit8 v1, v8, -0x1

    invoke-virtual {v7, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 404
    .local v1, "previousDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 408
    .end local v1    # "previousDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v14    # "arrayItem":Lcom/itextpdf/kernel/pdf/PdfArray;
    :cond_7
    :goto_2
    return v11
.end method
