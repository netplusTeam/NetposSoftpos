.class public Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;
.super Ljava/lang/Object;
.source "AccessibleAttributesApplier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyBlockLevelLayoutAttributes(Ljava/lang/String;Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 19
    .param p0, "role"    # Ljava/lang/String;
    .param p1, "renderer"    # Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .param p2, "attributes"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 186
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-class v3, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;

    const/4 v4, 0x4

    new-array v5, v4, [Lcom/itextpdf/layout/property/UnitValue;

    const/16 v6, 0x2e

    invoke-virtual {v1, v6}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v5, v8

    .line 187
    const/16 v7, 0x2b

    invoke-virtual {v1, v7}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v5, v10

    .line 188
    const/16 v9, 0x2c

    invoke-virtual {v1, v9}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v5, v12

    .line 189
    const/16 v11, 0x2d

    invoke-virtual {v1, v11}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v13

    const/4 v14, 0x3

    aput-object v13, v5, v14

    .line 192
    .local v5, "margins":[Lcom/itextpdf/layout/property/UnitValue;
    new-array v4, v4, [I

    fill-array-data v4, :array_0

    .line 194
    .local v4, "marginsOrder":[I
    aget v13, v4, v8

    aget-object v13, v5, v13

    .line 195
    .local v13, "spaceBefore":Lcom/itextpdf/layout/property/UnitValue;
    const-string v15, "Property {0} in percents is not supported"

    const/16 v16, 0x0

    if-eqz v13, :cond_2

    .line 196
    invoke-virtual {v13}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v17

    if-nez v17, :cond_0

    .line 197
    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v11

    .line 198
    .local v11, "logger":Lorg/slf4j/Logger;
    new-array v14, v10, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v14, v8

    invoke-static {v15, v14}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v11, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 200
    .end local v11    # "logger":Lorg/slf4j/Logger;
    :cond_0
    invoke-virtual {v13}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v6

    cmpl-float v6, v16, v6

    if-eqz v6, :cond_1

    .line 201
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->SpaceBefore:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v11, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v13}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v14

    move-object/from16 v18, v13

    .end local v13    # "spaceBefore":Lcom/itextpdf/layout/property/UnitValue;
    .local v18, "spaceBefore":Lcom/itextpdf/layout/property/UnitValue;
    float-to-double v12, v14

    invoke-direct {v11, v12, v13}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v2, v6, v11}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 200
    .end local v18    # "spaceBefore":Lcom/itextpdf/layout/property/UnitValue;
    .restart local v13    # "spaceBefore":Lcom/itextpdf/layout/property/UnitValue;
    :cond_1
    move-object/from16 v18, v13

    .end local v13    # "spaceBefore":Lcom/itextpdf/layout/property/UnitValue;
    .restart local v18    # "spaceBefore":Lcom/itextpdf/layout/property/UnitValue;
    goto :goto_0

    .line 195
    .end local v18    # "spaceBefore":Lcom/itextpdf/layout/property/UnitValue;
    .restart local v13    # "spaceBefore":Lcom/itextpdf/layout/property/UnitValue;
    :cond_2
    move-object/from16 v18, v13

    .line 205
    .end local v13    # "spaceBefore":Lcom/itextpdf/layout/property/UnitValue;
    .restart local v18    # "spaceBefore":Lcom/itextpdf/layout/property/UnitValue;
    :goto_0
    aget v6, v4, v10

    aget-object v6, v5, v6

    .line 206
    .local v6, "spaceAfter":Lcom/itextpdf/layout/property/UnitValue;
    if-eqz v6, :cond_4

    .line 207
    invoke-virtual {v6}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v11

    if-nez v11, :cond_3

    .line 208
    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v11

    .line 209
    .restart local v11    # "logger":Lorg/slf4j/Logger;
    new-array v12, v10, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v12, v8

    invoke-static {v15, v12}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v11, v7}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 211
    .end local v11    # "logger":Lorg/slf4j/Logger;
    :cond_3
    invoke-virtual {v6}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v7

    cmpl-float v7, v16, v7

    if-eqz v7, :cond_4

    .line 212
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->SpaceAfter:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v11, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v6}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v12

    float-to-double v12, v12

    invoke-direct {v11, v12, v13}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v2, v7, v11}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 217
    :cond_4
    const/4 v7, 0x2

    aget v7, v4, v7

    aget-object v7, v5, v7

    .line 218
    .local v7, "startIndent":Lcom/itextpdf/layout/property/UnitValue;
    if-eqz v7, :cond_6

    .line 219
    invoke-virtual {v7}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v11

    if-nez v11, :cond_5

    .line 220
    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v11

    .line 221
    .restart local v11    # "logger":Lorg/slf4j/Logger;
    new-array v12, v10, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v12, v8

    invoke-static {v15, v12}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v11, v9}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 223
    .end local v11    # "logger":Lorg/slf4j/Logger;
    :cond_5
    invoke-virtual {v7}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v9

    cmpl-float v9, v16, v9

    if-eqz v9, :cond_6

    .line 224
    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->StartIndent:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v11, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v7}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v12

    float-to-double v12, v12

    invoke-direct {v11, v12, v13}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v2, v9, v11}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 228
    :cond_6
    const/4 v9, 0x3

    aget v9, v4, v9

    aget-object v9, v5, v9

    .line 229
    .local v9, "endIndent":Lcom/itextpdf/layout/property/UnitValue;
    if-eqz v9, :cond_8

    .line 230
    invoke-virtual {v9}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v11

    if-nez v11, :cond_7

    .line 231
    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v3

    .line 232
    .local v3, "logger":Lorg/slf4j/Logger;
    new-array v10, v10, [Ljava/lang/Object;

    const/16 v11, 0x2d

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v15, v10}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 234
    .end local v3    # "logger":Lorg/slf4j/Logger;
    :cond_7
    invoke-virtual {v9}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v3

    cmpl-float v3, v16, v3

    if-eqz v3, :cond_8

    .line 235
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->EndIndent:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v8, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v9}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v10

    float-to-double v10, v10

    invoke-direct {v8, v10, v11}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v2, v3, v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 239
    :cond_8
    const/16 v3, 0x12

    invoke-virtual {v1, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v3

    .line 240
    .local v3, "firstLineIndent":Ljava/lang/Float;
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpl-float v8, v8, v16

    if-eqz v8, :cond_9

    .line 241
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->TextIndent:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v11

    float-to-double v11, v11

    invoke-direct {v10, v11, v12}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v2, v8, v10}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 244
    :cond_9
    const/16 v8, 0x46

    invoke-virtual {v1, v8}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/layout/property/TextAlignment;

    .line 245
    .local v8, "textAlignment":Lcom/itextpdf/layout/property/TextAlignment;
    const-string v10, "TD"

    const-string v11, "TH"

    if-eqz v8, :cond_a

    .line 247
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 248
    sget-object v12, Lcom/itextpdf/kernel/pdf/PdfName;->TextAlign:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {v8}, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;->transformTextAlignmentValueToName(Lcom/itextpdf/layout/property/TextAlignment;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 252
    :cond_a
    iget-boolean v12, v1, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isLastRendererForModelElement:Z

    if-eqz v12, :cond_b

    .line 253
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v12

    .line 254
    .local v12, "bbox":Lcom/itextpdf/kernel/geom/Rectangle;
    sget-object v13, Lcom/itextpdf/kernel/pdf/PdfName;->BBox:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v14, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v14, v12}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-virtual {v2, v13, v14}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 257
    .end local v12    # "bbox":Lcom/itextpdf/kernel/geom/Rectangle;
    :cond_b
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d

    const-string v12, "Table"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    goto :goto_1

    :cond_c
    move-object/from16 v17, v3

    move-object/from16 v16, v4

    goto :goto_4

    .line 262
    :cond_d
    :goto_1
    instance-of v12, v1, Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v12, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v12

    check-cast v12, Lcom/itextpdf/layout/element/Table;

    invoke-virtual {v12}, Lcom/itextpdf/layout/element/Table;->isComplete()Z

    move-result v12

    if-eqz v12, :cond_e

    goto :goto_2

    :cond_e
    move-object/from16 v17, v3

    move-object/from16 v16, v4

    goto :goto_3

    .line 263
    :cond_f
    :goto_2
    const/16 v12, 0x4d

    invoke-virtual {v1, v12}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/itextpdf/layout/property/UnitValue;

    .line 264
    .local v12, "width":Lcom/itextpdf/layout/property/UnitValue;
    if-eqz v12, :cond_10

    invoke-virtual {v12}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v13

    if-eqz v13, :cond_10

    .line 265
    sget-object v13, Lcom/itextpdf/kernel/pdf/PdfName;->Width:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v14, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v12}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v15

    move-object/from16 v17, v3

    move-object/from16 v16, v4

    .end local v3    # "firstLineIndent":Ljava/lang/Float;
    .end local v4    # "marginsOrder":[I
    .local v16, "marginsOrder":[I
    .local v17, "firstLineIndent":Ljava/lang/Float;
    float-to-double v3, v15

    invoke-direct {v14, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v2, v13, v14}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_3

    .line 264
    .end local v16    # "marginsOrder":[I
    .end local v17    # "firstLineIndent":Ljava/lang/Float;
    .restart local v3    # "firstLineIndent":Ljava/lang/Float;
    .restart local v4    # "marginsOrder":[I
    :cond_10
    move-object/from16 v17, v3

    move-object/from16 v16, v4

    .line 268
    .end local v3    # "firstLineIndent":Ljava/lang/Float;
    .end local v4    # "marginsOrder":[I
    .end local v12    # "width":Lcom/itextpdf/layout/property/UnitValue;
    .restart local v16    # "marginsOrder":[I
    .restart local v17    # "firstLineIndent":Ljava/lang/Float;
    :goto_3
    const/16 v3, 0x1b

    invoke-virtual {v1, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/property/UnitValue;

    .line 269
    .local v3, "height":Lcom/itextpdf/layout/property/UnitValue;
    if-eqz v3, :cond_11

    invoke-virtual {v3}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 270
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Height:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v12, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v3}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v13

    float-to-double v13, v13

    invoke-direct {v12, v13, v14}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v2, v4, v12}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 274
    .end local v3    # "height":Lcom/itextpdf/layout/property/UnitValue;
    :cond_11
    :goto_4
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 275
    :cond_12
    const/16 v3, 0x1c

    invoke-virtual {v1, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/property/HorizontalAlignment;

    .line 276
    .local v3, "horizontalAlignment":Lcom/itextpdf/layout/property/HorizontalAlignment;
    if-eqz v3, :cond_13

    .line 277
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->BlockAlign:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {v3}, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;->transformBlockAlignToName(Lcom/itextpdf/layout/property/HorizontalAlignment;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v10

    invoke-virtual {v2, v4, v10}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 280
    :cond_13
    if-eqz v8, :cond_14

    sget-object v4, Lcom/itextpdf/layout/property/TextAlignment;->JUSTIFIED:Lcom/itextpdf/layout/property/TextAlignment;

    if-eq v8, v4, :cond_14

    sget-object v4, Lcom/itextpdf/layout/property/TextAlignment;->JUSTIFIED_ALL:Lcom/itextpdf/layout/property/TextAlignment;

    if-eq v8, v4, :cond_14

    .line 283
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->InlineAlign:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {v8}, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;->transformTextAlignmentValueToName(Lcom/itextpdf/layout/property/TextAlignment;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v10

    invoke-virtual {v2, v4, v10}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 287
    .end local v3    # "horizontalAlignment":Lcom/itextpdf/layout/property/HorizontalAlignment;
    :cond_14
    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method private static applyBorderAttributes(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 18
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .param p1, "attributes"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 389
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    const/16 v2, 0xc

    .line 390
    invoke-virtual {v0, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    const/16 v2, 0xa

    .line 391
    invoke-virtual {v0, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    const/16 v2, 0xb

    .line 392
    invoke-virtual {v0, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    .line 394
    .local v2, "specificBorderProperties":Z
    :goto_1
    const/16 v5, 0x9

    if-nez v2, :cond_2

    invoke-virtual {v0, v5}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    .line 396
    .local v3, "generalBorderProperties":Z
    :goto_2
    if-eqz v3, :cond_3

    .line 397
    invoke-virtual {v0, v5}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/layout/borders/Border;

    .line 398
    .local v5, "generalBorder":Lcom/itextpdf/layout/borders/Border;
    invoke-virtual {v5}, Lcom/itextpdf/layout/borders/Border;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v6

    .line 399
    .local v6, "generalBorderColor":Lcom/itextpdf/kernel/colors/Color;
    invoke-virtual {v5}, Lcom/itextpdf/layout/borders/Border;->getType()I

    move-result v7

    .line 400
    .local v7, "borderType":I
    invoke-virtual {v5}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v8

    .line 402
    .local v8, "borderWidth":F
    instance-of v9, v6, Lcom/itextpdf/kernel/colors/DeviceRgb;

    if-eqz v9, :cond_3

    .line 403
    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->BorderColor:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/colors/Color;->getColorValue()[F

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 404
    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->BorderStyle:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {v7}, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;->transformBorderTypeToName(I)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 405
    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->BorderThickness:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/kernel/pdf/PdfNumber;

    float-to-double v11, v8

    invoke-direct {v10, v11, v12}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 409
    .end local v5    # "generalBorder":Lcom/itextpdf/layout/borders/Border;
    .end local v6    # "generalBorderColor":Lcom/itextpdf/kernel/colors/Color;
    .end local v7    # "borderType":I
    .end local v8    # "borderWidth":F
    :cond_3
    if-eqz v2, :cond_12

    .line 410
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v5}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 411
    .local v5, "borderColors":Lcom/itextpdf/kernel/pdf/PdfArray;
    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v6}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 412
    .local v6, "borderTypes":Lcom/itextpdf/kernel/pdf/PdfArray;
    new-instance v7, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v7}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 413
    .local v7, "borderWidths":Lcom/itextpdf/kernel/pdf/PdfArray;
    const/4 v8, 0x0

    .line 414
    .local v8, "atLeastOneRgb":Z
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v9

    .line 416
    .local v9, "borders":[Lcom/itextpdf/layout/borders/Border;
    const/4 v10, 0x1

    .line 417
    .local v10, "allColorsEqual":Z
    const/4 v11, 0x1

    .line 418
    .local v11, "allTypesEqual":Z
    const/4 v12, 0x1

    .line 420
    .local v12, "allWidthsEqual":Z
    const/4 v13, 0x1

    .local v13, "i":I
    :goto_3
    array-length v14, v9

    if-ge v13, v14, :cond_a

    .line 421
    aget-object v14, v9, v13

    .line 422
    .local v14, "border":Lcom/itextpdf/layout/borders/Border;
    if-eqz v14, :cond_9

    .line 423
    aget-object v15, v9, v4

    if-eqz v15, :cond_4

    invoke-virtual {v14}, Lcom/itextpdf/layout/borders/Border;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v15

    aget-object v16, v9, v4

    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/layout/borders/Border;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v4

    invoke-virtual {v15, v4}, Lcom/itextpdf/kernel/colors/Color;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 424
    :cond_4
    const/4 v10, 0x0

    .line 427
    :cond_5
    const/4 v4, 0x0

    aget-object v15, v9, v4

    if-eqz v15, :cond_6

    invoke-virtual {v14}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v15

    aget-object v16, v9, v4

    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v4

    cmpl-float v4, v15, v4

    if-eqz v4, :cond_7

    .line 428
    :cond_6
    const/4 v12, 0x0

    .line 431
    :cond_7
    const/4 v4, 0x0

    aget-object v15, v9, v4

    if-eqz v15, :cond_8

    invoke-virtual {v14}, Lcom/itextpdf/layout/borders/Border;->getType()I

    move-result v15

    aget-object v16, v9, v4

    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/layout/borders/Border;->getType()I

    move-result v4

    if-eq v15, v4, :cond_9

    .line 432
    :cond_8
    const/4 v4, 0x0

    move v11, v4

    .line 420
    .end local v14    # "border":Lcom/itextpdf/layout/borders/Border;
    :cond_9
    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x0

    goto :goto_3

    .line 438
    .end local v13    # "i":I
    :cond_a
    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    .line 439
    .local v4, "borderOrder":[I
    array-length v13, v4

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v13, :cond_d

    aget v15, v4, v14

    .line 440
    .local v15, "i":I
    aget-object v16, v9, v15

    if-eqz v16, :cond_c

    .line 441
    aget-object v16, v9, v15

    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/layout/borders/Border;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v0

    instance-of v0, v0, Lcom/itextpdf/kernel/colors/DeviceRgb;

    if-eqz v0, :cond_b

    .line 442
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    aget-object v16, v9, v15

    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/layout/borders/Border;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v16

    move/from16 v17, v2

    .end local v2    # "specificBorderProperties":Z
    .local v17, "specificBorderProperties":Z
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/kernel/colors/Color;->getColorValue()[F

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v5, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 443
    const/4 v8, 0x1

    goto :goto_5

    .line 445
    .end local v17    # "specificBorderProperties":Z
    .restart local v2    # "specificBorderProperties":Z
    :cond_b
    move/from16 v17, v2

    .end local v2    # "specificBorderProperties":Z
    .restart local v17    # "specificBorderProperties":Z
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfNull;->PDF_NULL:Lcom/itextpdf/kernel/pdf/PdfNull;

    invoke-virtual {v5, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 447
    :goto_5
    aget-object v0, v9, v15

    invoke-virtual {v0}, Lcom/itextpdf/layout/borders/Border;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;->transformBorderTypeToName(I)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 448
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfNumber;

    aget-object v2, v9, v15

    invoke-virtual {v2}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v2

    move/from16 v16, v3

    .end local v3    # "generalBorderProperties":Z
    .local v16, "generalBorderProperties":Z
    float-to-double v2, v2

    invoke-direct {v0, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v7, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_6

    .line 450
    .end local v16    # "generalBorderProperties":Z
    .end local v17    # "specificBorderProperties":Z
    .restart local v2    # "specificBorderProperties":Z
    .restart local v3    # "generalBorderProperties":Z
    :cond_c
    move/from16 v17, v2

    move/from16 v16, v3

    .end local v2    # "specificBorderProperties":Z
    .end local v3    # "generalBorderProperties":Z
    .restart local v16    # "generalBorderProperties":Z
    .restart local v17    # "specificBorderProperties":Z
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfNull;->PDF_NULL:Lcom/itextpdf/kernel/pdf/PdfNull;

    invoke-virtual {v5, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 451
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->None:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v6, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 452
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfNull;->PDF_NULL:Lcom/itextpdf/kernel/pdf/PdfNull;

    invoke-virtual {v7, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 439
    .end local v15    # "i":I
    :goto_6
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move/from16 v3, v16

    move/from16 v2, v17

    goto :goto_4

    .line 456
    .end local v16    # "generalBorderProperties":Z
    .end local v17    # "specificBorderProperties":Z
    .restart local v2    # "specificBorderProperties":Z
    .restart local v3    # "generalBorderProperties":Z
    :cond_d
    move/from16 v17, v2

    move/from16 v16, v3

    .end local v2    # "specificBorderProperties":Z
    .end local v3    # "generalBorderProperties":Z
    .restart local v16    # "generalBorderProperties":Z
    .restart local v17    # "specificBorderProperties":Z
    if-eqz v8, :cond_f

    .line 457
    if-eqz v10, :cond_e

    .line 458
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->BorderColor:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_7

    .line 460
    :cond_e
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->BorderColor:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 464
    :cond_f
    :goto_7
    if-eqz v11, :cond_10

    .line 465
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->BorderStyle:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_8

    .line 467
    :cond_10
    const/4 v2, 0x0

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->BorderStyle:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 470
    :goto_8
    if-eqz v12, :cond_11

    .line 471
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->BorderThickness:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_9

    .line 473
    :cond_11
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->BorderThickness:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_9

    .line 409
    .end local v4    # "borderOrder":[I
    .end local v5    # "borderColors":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v6    # "borderTypes":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v7    # "borderWidths":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v8    # "atLeastOneRgb":Z
    .end local v9    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .end local v10    # "allColorsEqual":Z
    .end local v11    # "allTypesEqual":Z
    .end local v12    # "allWidthsEqual":Z
    .end local v16    # "generalBorderProperties":Z
    .end local v17    # "specificBorderProperties":Z
    .restart local v2    # "specificBorderProperties":Z
    .restart local v3    # "generalBorderProperties":Z
    :cond_12
    move/from16 v17, v2

    move/from16 v16, v3

    .line 476
    .end local v2    # "specificBorderProperties":Z
    .end local v3    # "generalBorderProperties":Z
    .restart local v16    # "generalBorderProperties":Z
    .restart local v17    # "specificBorderProperties":Z
    :goto_9
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method private static applyCommonLayoutAttributes(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 5
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .param p1, "attributes"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 166
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/Background;

    .line 167
    .local v0, "background":Lcom/itextpdf/layout/property/Background;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/layout/property/Background;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v1

    instance-of v1, v1, Lcom/itextpdf/kernel/colors/DeviceRgb;

    if-eqz v1, :cond_0

    .line 168
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->BackgroundColor:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v0}, Lcom/itextpdf/layout/property/Background;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/colors/Color;->getColorValue()[F

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {p1, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v1

    instance-of v1, v1, Lcom/itextpdf/layout/element/Cell;

    if-nez v1, :cond_1

    .line 175
    invoke-static {p0, p1}, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;->applyBorderAttributes(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 177
    :cond_1
    invoke-static {p0, p1}, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;->applyPaddingAttribute(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 179
    const/16 v1, 0x15

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsTransparentColor(I)Lcom/itextpdf/layout/property/TransparentColor;

    move-result-object v1

    .line 180
    .local v1, "transparentColor":Lcom/itextpdf/layout/property/TransparentColor;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/itextpdf/layout/property/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v2

    instance-of v2, v2, Lcom/itextpdf/kernel/colors/DeviceRgb;

    if-eqz v2, :cond_2

    .line 181
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Color:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v1}, Lcom/itextpdf/layout/property/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/colors/Color;->getColorValue()[F

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {p1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 183
    :cond_2
    return-void
.end method

.method private static applyIllustrationLayoutAttributes(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 7
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .param p1, "attributes"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 323
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 324
    .local v0, "bbox":Lcom/itextpdf/kernel/geom/Rectangle;
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->BBox:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v2, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-virtual {p1, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 326
    const/16 v1, 0x4d

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/property/UnitValue;

    .line 327
    .local v1, "width":Lcom/itextpdf/layout/property/UnitValue;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Width:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v1}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v4

    float-to-double v4, v4

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {p1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 330
    :cond_0
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Width:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v4

    float-to-double v4, v4

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {p1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 333
    :goto_0
    const/16 v2, 0x1b

    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/property/UnitValue;

    .line 334
    .local v2, "height":Lcom/itextpdf/layout/property/UnitValue;
    if-eqz v2, :cond_1

    .line 335
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Height:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v2}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v5

    float-to-double v5, v5

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {p1, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_1

    .line 337
    :cond_1
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Height:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    float-to-double v5, v5

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {p1, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 339
    :goto_1
    return-void
.end method

.method private static applyInlineLevelLayoutAttributes(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 8
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .param p1, "attributes"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 290
    const/16 v0, 0x48

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v0

    .line 291
    .local v0, "textRise":Ljava/lang/Float;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_0

    .line 292
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->BaselineShift:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v4, v4

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {p1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 295
    :cond_0
    const/16 v2, 0x4a

    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    .line 296
    .local v2, "underlines":Ljava/lang/Object;
    if-eqz v2, :cond_6

    .line 297
    const/16 v3, 0x18

    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v4

    .line 298
    .local v4, "fontSize":Lcom/itextpdf/layout/property/UnitValue;
    invoke-virtual {v4}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_1

    .line 299
    const-class v5, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;

    invoke-static {v5}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v5

    .line 300
    .local v5, "logger":Lorg/slf4j/Logger;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v6

    const-string v3, "Property {0} in percents is not supported"

    invoke-static {v3, v7}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 302
    .end local v5    # "logger":Lorg/slf4j/Logger;
    :cond_1
    const/4 v3, 0x0

    .line 303
    .local v3, "underline":Lcom/itextpdf/layout/property/Underline;
    instance-of v5, v2, Ljava/util/List;

    if-eqz v5, :cond_2

    move-object v5, v2

    check-cast v5, Ljava/util/List;

    .line 304
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    move-object v5, v2

    check-cast v5, Ljava/util/List;

    .line 305
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/itextpdf/layout/property/Underline;

    if-eqz v5, :cond_2

    .line 307
    move-object v5, v2

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Lcom/itextpdf/layout/property/Underline;

    goto :goto_0

    .line 308
    :cond_2
    instance-of v5, v2, Lcom/itextpdf/layout/property/Underline;

    if-eqz v5, :cond_3

    .line 309
    move-object v3, v2

    check-cast v3, Lcom/itextpdf/layout/property/Underline;

    .line 311
    :cond_3
    :goto_0
    if-eqz v3, :cond_6

    .line 312
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->TextDecorationType:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v6

    invoke-virtual {v3, v6}, Lcom/itextpdf/layout/property/Underline;->getYPosition(F)F

    move-result v6

    cmpl-float v1, v6, v1

    if-lez v1, :cond_4

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->LineThrough:Lcom/itextpdf/kernel/pdf/PdfName;

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Underline:Lcom/itextpdf/kernel/pdf/PdfName;

    :goto_1
    invoke-virtual {p1, v5, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 313
    invoke-virtual {v3}, Lcom/itextpdf/layout/property/Underline;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v1

    instance-of v1, v1, Lcom/itextpdf/kernel/colors/DeviceRgb;

    if-eqz v1, :cond_5

    .line 314
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->TextDecorationColor:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v3}, Lcom/itextpdf/layout/property/Underline;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/colors/Color;->getColorValue()[F

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {p1, v1, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 317
    :cond_5
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->TextDecorationThickness:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v4}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v6

    invoke-virtual {v3, v6}, Lcom/itextpdf/layout/property/Underline;->getThickness(F)F

    move-result v6

    float-to-double v6, v6

    invoke-direct {v5, v6, v7}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {p1, v1, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 320
    .end local v3    # "underline":Lcom/itextpdf/layout/property/Underline;
    .end local v4    # "fontSize":Lcom/itextpdf/layout/property/UnitValue;
    :cond_6
    return-void
.end method

.method private static applyPaddingAttribute(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 14
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .param p1, "attributes"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 342
    const-class v0, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;

    const/4 v1, 0x4

    new-array v2, v1, [Lcom/itextpdf/layout/property/UnitValue;

    .line 343
    const/16 v3, 0x32

    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 344
    const/16 v4, 0x31

    invoke-virtual {p0, v4}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v2, v7

    .line 345
    const/16 v6, 0x2f

    invoke-virtual {p0, v6}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v2, v9

    .line 346
    const/16 v8, 0x30

    invoke-virtual {p0, v8}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v10

    const/4 v11, 0x3

    aput-object v10, v2, v11

    .line 349
    .local v2, "paddingsUV":[Lcom/itextpdf/layout/property/UnitValue;
    aget-object v10, v2, v5

    invoke-virtual {v10}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v10

    const-string v12, "Property {0} in percents is not supported"

    if-nez v10, :cond_0

    .line 350
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v10

    .line 351
    .local v10, "logger":Lorg/slf4j/Logger;
    new-array v13, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v13, v5

    invoke-static {v12, v13}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 353
    .end local v10    # "logger":Lorg/slf4j/Logger;
    :cond_0
    aget-object v3, v2, v7

    invoke-virtual {v3}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 354
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v3

    .line 355
    .local v3, "logger":Lorg/slf4j/Logger;
    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v10, v5

    invoke-static {v12, v10}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 357
    .end local v3    # "logger":Lorg/slf4j/Logger;
    :cond_1
    aget-object v3, v2, v9

    invoke-virtual {v3}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v3

    if-nez v3, :cond_2

    .line 358
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v3

    .line 359
    .restart local v3    # "logger":Lorg/slf4j/Logger;
    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v12, v4}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 361
    .end local v3    # "logger":Lorg/slf4j/Logger;
    :cond_2
    aget-object v3, v2, v11

    invoke-virtual {v3}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v3

    if-nez v3, :cond_3

    .line 362
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 363
    .local v0, "logger":Lorg/slf4j/Logger;
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v12, v3}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 366
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :cond_3
    new-array v0, v1, [F

    aget-object v3, v2, v5

    invoke-virtual {v3}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v3

    aput v3, v0, v5

    aget-object v3, v2, v7

    invoke-virtual {v3}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v3

    aput v3, v0, v7

    aget-object v3, v2, v9

    invoke-virtual {v3}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v3

    aput v3, v0, v9

    aget-object v3, v2, v11

    invoke-virtual {v3}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v3

    aput v3, v0, v11

    .line 367
    .local v0, "paddings":[F
    const/4 v3, 0x0

    .line 368
    .local v3, "padding":Lcom/itextpdf/kernel/pdf/PdfObject;
    aget v4, v0, v5

    aget v6, v0, v7

    cmpl-float v4, v4, v6

    if-nez v4, :cond_4

    aget v4, v0, v5

    aget v6, v0, v9

    cmpl-float v4, v4, v6

    if-nez v4, :cond_4

    aget v4, v0, v5

    aget v6, v0, v11

    cmpl-float v4, v4, v6

    if-nez v4, :cond_4

    .line 369
    aget v1, v0, v5

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_6

    .line 370
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    aget v4, v0, v5

    float-to-double v4, v4

    invoke-direct {v1, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    move-object v3, v1

    goto :goto_1

    .line 373
    :cond_4
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v4}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 376
    .local v4, "paddingArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 377
    .local v1, "paddingsOrder":[I
    array-length v6, v1

    :goto_0
    if-ge v5, v6, :cond_5

    aget v7, v1, v5

    .line 378
    .local v7, "i":I
    new-instance v8, Lcom/itextpdf/kernel/pdf/PdfNumber;

    aget v9, v0, v7

    float-to-double v9, v9

    invoke-direct {v8, v9, v10}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v4, v8}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 377
    .end local v7    # "i":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 380
    :cond_5
    move-object v3, v4

    .line 383
    .end local v1    # "paddingsOrder":[I
    .end local v4    # "paddingArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    :cond_6
    :goto_1
    if-eqz v3, :cond_7

    .line 384
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Padding:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 386
    :cond_7
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public static getLayoutAttributes(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;
    .locals 7
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .param p1, "taggingPointer"    # Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    .line 88
    invoke-static {p1}, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;->resolveMappingToStandard(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;

    move-result-object v0

    .line 89
    .local v0, "resolvedMapping":Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 90
    return-object v1

    .line 93
    :cond_0
    invoke-interface {v0}, Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;->getRole()Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "role":Ljava/lang/String;
    invoke-static {v2}, Lcom/itextpdf/layout/renderer/AccessibleTypes;->identifyType(Ljava/lang/String;)I

    move-result v3

    .line 95
    .local v3, "tagType":I
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 96
    .local v4, "attributes":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->O:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Layout:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 100
    invoke-static {p0, v4}, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;->applyCommonLayoutAttributes(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 101
    sget v5, Lcom/itextpdf/layout/renderer/AccessibleTypes;->BlockLevel:I

    if-ne v3, v5, :cond_1

    .line 102
    invoke-static {v2, p0, v4}, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;->applyBlockLevelLayoutAttributes(Ljava/lang/String;Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 104
    :cond_1
    sget v5, Lcom/itextpdf/layout/renderer/AccessibleTypes;->InlineLevel:I

    if-ne v3, v5, :cond_2

    .line 105
    invoke-static {p0, v4}, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;->applyInlineLevelLayoutAttributes(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 108
    :cond_2
    sget v5, Lcom/itextpdf/layout/renderer/AccessibleTypes;->Illustration:I

    if-ne v3, v5, :cond_3

    .line 109
    invoke-static {p0, v4}, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;->applyIllustrationLayoutAttributes(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 112
    :cond_3
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_4

    new-instance v1, Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;

    invoke-direct {v1, v4}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    :cond_4
    return-object v1
.end method

.method public static getListAttributes(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;
    .locals 8
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .param p1, "taggingPointer"    # Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "resolvedMapping":Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;
    invoke-static {p1}, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;->resolveMappingToStandard(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;

    move-result-object v0

    .line 118
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;->getRole()Ljava/lang/String;

    move-result-object v2

    const-string v3, "L"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 122
    :cond_0
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 123
    .local v2, "attributes":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->O:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->List:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 125
    const/16 v3, 0x25

    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v3

    .line 127
    .local v3, "listSymbol":Ljava/lang/Object;
    invoke-interface {v0}, Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;->getNamespace()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;->isTagStructurePdf2(Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)Z

    move-result v4

    .line 128
    .local v4, "tagStructurePdf2":Z
    instance-of v5, v3, Lcom/itextpdf/layout/property/ListNumberingType;

    if-eqz v5, :cond_1

    .line 129
    move-object v5, v3

    check-cast v5, Lcom/itextpdf/layout/property/ListNumberingType;

    .line 130
    .local v5, "numberingType":Lcom/itextpdf/layout/property/ListNumberingType;
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->ListNumbering:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {v5, v4}, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;->transformNumberingTypeToName(Lcom/itextpdf/layout/property/ListNumberingType;Z)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .end local v5    # "numberingType":Lcom/itextpdf/layout/property/ListNumberingType;
    goto :goto_0

    .line 131
    :cond_1
    if-eqz v4, :cond_3

    .line 132
    instance-of v5, v3, Lcom/itextpdf/layout/property/IListSymbolFactory;

    if-eqz v5, :cond_2

    .line 133
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->ListNumbering:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Ordered:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v5, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_1

    .line 135
    :cond_2
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->ListNumbering:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Unordered:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v5, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_1

    .line 131
    :cond_3
    :goto_0
    nop

    .line 139
    :goto_1
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_4

    new-instance v1, Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    :cond_4
    return-object v1

    .line 119
    .end local v2    # "attributes":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v3    # "listSymbol":Ljava/lang/Object;
    .end local v4    # "tagStructurePdf2":Z
    :cond_5
    :goto_2
    return-object v1
.end method

.method public static getTableAttributes(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;
    .locals 8
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .param p1, "taggingPointer"    # Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    .line 143
    invoke-static {p1}, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;->resolveMappingToStandard(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;

    move-result-object v0

    .line 144
    .local v0, "resolvedMapping":Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 145
    invoke-interface {v0}, Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;->getRole()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TD"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;->getRole()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TH"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 150
    .local v2, "attributes":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->O:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Table:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 152
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v3

    instance-of v3, v3, Lcom/itextpdf/layout/element/Cell;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 153
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/element/Cell;

    .line 154
    .local v3, "cell":Lcom/itextpdf/layout/element/Cell;
    invoke-virtual {v3}, Lcom/itextpdf/layout/element/Cell;->getRowspan()I

    move-result v5

    if-eq v5, v4, :cond_1

    .line 155
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->RowSpan:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v3}, Lcom/itextpdf/layout/element/Cell;->getRowspan()I

    move-result v7

    invoke-direct {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v2, v5, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 157
    :cond_1
    invoke-virtual {v3}, Lcom/itextpdf/layout/element/Cell;->getColspan()I

    move-result v5

    if-eq v5, v4, :cond_2

    .line 158
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->ColSpan:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v3}, Lcom/itextpdf/layout/element/Cell;->getColspan()I

    move-result v7

    invoke-direct {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v2, v5, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 162
    .end local v3    # "cell":Lcom/itextpdf/layout/element/Cell;
    :cond_2
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->size()I

    move-result v3

    if-le v3, v4, :cond_3

    new-instance v1, Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    :cond_3
    return-object v1

    .line 146
    .end local v2    # "attributes":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_4
    :goto_0
    return-object v1
.end method

.method private static isTagStructurePdf2(Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)Z
    .locals 2
    .param p0, "namespace"    # Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    .line 485
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;->getNamespaceName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://iso.org/pdf2/ssn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static resolveMappingToStandard(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;
    .locals 3
    .param p0, "taggingPointer"    # Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    .line 479
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getTagStructureContext()Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    move-result-object v0

    .line 480
    .local v0, "tagContext":Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->getNamespace()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    move-result-object v1

    .line 481
    .local v1, "namespace":Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getRole()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->resolveMappingToStandardOrDomainSpecificRole(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;

    move-result-object v2

    return-object v2
.end method

.method private static transformBlockAlignToName(Lcom/itextpdf/layout/property/HorizontalAlignment;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 3
    .param p0, "horizontalAlignment"    # Lcom/itextpdf/layout/property/HorizontalAlignment;

    .line 516
    const/4 v0, 0x1

    .line 517
    .local v0, "isLeftToRight":Z
    sget-object v1, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier$1;->$SwitchMap$com$itextpdf$layout$property$HorizontalAlignment:[I

    invoke-virtual {p0}, Lcom/itextpdf/layout/property/HorizontalAlignment;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 533
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Before:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v1

    .line 527
    :pswitch_0
    if-eqz v0, :cond_0

    .line 528
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->After:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v1

    .line 530
    :cond_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Before:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v1

    .line 525
    :pswitch_1
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Middle:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v1

    .line 519
    :pswitch_2
    if-eqz v0, :cond_1

    .line 520
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Before:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v1

    .line 522
    :cond_1
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->After:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static transformBorderTypeToName(I)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1
    .param p0, "borderType"    # I

    .line 538
    packed-switch p0, :pswitch_data_0

    .line 558
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Solid:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0

    .line 556
    :pswitch_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Ridge:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0

    .line 554
    :pswitch_1
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Outset:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0

    .line 552
    :pswitch_2
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Inset:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0

    .line 550
    :pswitch_3
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Groove:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0

    .line 546
    :pswitch_4
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Dotted:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0

    .line 548
    :pswitch_5
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Double:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0

    .line 544
    :pswitch_6
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Dotted:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0

    .line 542
    :pswitch_7
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Dashed:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0

    .line 540
    :pswitch_8
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Solid:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static transformNumberingTypeToName(Lcom/itextpdf/layout/property/ListNumberingType;Z)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 2
    .param p0, "numberingType"    # Lcom/itextpdf/layout/property/ListNumberingType;
    .param p1, "isTagStructurePdf2"    # Z

    .line 564
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier$1;->$SwitchMap$com$itextpdf$layout$property$ListNumberingType:[I

    invoke-virtual {p0}, Lcom/itextpdf/layout/property/ListNumberingType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 579
    if-eqz p1, :cond_0

    .line 580
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Ordered:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0

    .line 577
    :pswitch_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->LowerAlpha:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0

    .line 574
    :pswitch_1
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->UpperAlpha:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0

    .line 571
    :pswitch_2
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->LowerRoman:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0

    .line 569
    :pswitch_3
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->UpperRoman:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0

    .line 567
    :pswitch_4
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Decimal:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0

    .line 582
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->None:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static transformTextAlignmentValueToName(Lcom/itextpdf/layout/property/TextAlignment;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 3
    .param p0, "textAlignment"    # Lcom/itextpdf/layout/property/TextAlignment;

    .line 490
    const/4 v0, 0x1

    .line 491
    .local v0, "isLeftToRight":Z
    sget-object v1, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier$1;->$SwitchMap$com$itextpdf$layout$property$TextAlignment:[I

    invoke-virtual {p0}, Lcom/itextpdf/layout/property/TextAlignment;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 510
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Start:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v1

    .line 508
    :pswitch_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Justify:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v1

    .line 501
    :pswitch_1
    if-eqz v0, :cond_0

    .line 502
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->End:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v1

    .line 504
    :cond_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Start:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v1

    .line 499
    :pswitch_2
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Center:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v1

    .line 493
    :pswitch_3
    if-eqz v0, :cond_1

    .line 494
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Start:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v1

    .line 496
    :cond_1
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->End:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
