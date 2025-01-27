.class public final Lcom/itextpdf/styledxmlparser/css/util/CssGradientUtil;
.super Ljava/lang/Object;
.source "CssGradientUtil.java"


# static fields
.field private static final LINEAR_GRADIENT_FUNCTION_SUFFIX:Ljava/lang/String; = "linear-gradient("

.field private static final REPEATING_LINEAR_GRADIENT_FUNCTION_SUFFIX:Ljava/lang/String; = "repeating-linear-gradient("


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method private static addStopColors(Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;Ljava/util/List;IFF)V
    .locals 18
    .param p0, "builder"    # Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;
    .param p2, "stopsStartIndex"    # I
    .param p3, "emValue"    # F
    .param p4, "remValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IFF)V"
        }
    .end annotation

    .line 160
    .local p1, "argumentsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    const/4 v3, 0x0

    .line 161
    .local v3, "lastCreatedStopColor":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .line 162
    .local v4, "lastStopIndex":I
    move/from16 v6, p2

    .local v6, "i":I
    :goto_0
    if-gt v6, v4, :cond_c

    .line 163
    move-object/from16 v7, p1

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 164
    .local v8, "argument":Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v9, "elementsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;

    invoke-direct {v10, v8}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;-><init>(Ljava/lang/String;)V

    .line 167
    .local v10, "tokenizer":Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;
    :goto_1
    invoke-virtual {v10}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->getNextValidToken()Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;

    move-result-object v11

    move-object v12, v11

    .local v12, "nextToken":Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;
    if-eqz v11, :cond_0

    .line 168
    invoke-virtual {v12}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 171
    :cond_0
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v11

    const-string v13, "Invalid color stop value: {0}"

    const/4 v14, 0x0

    if-nez v11, :cond_b

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    const/4 v15, 0x3

    if-gt v11, v15, :cond_b

    .line 175
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isColorProperty(Ljava/lang/String;)Z

    move-result v11

    const/4 v15, 0x2

    if-eqz v11, :cond_7

    .line 176
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseRgbaColor(Ljava/lang/String;)[F

    move-result-object v11

    .line 177
    .local v11, "rgba":[F
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    if-ne v14, v5, :cond_3

    .line 178
    move/from16 v14, p2

    if-ne v6, v14, :cond_1

    new-instance v13, Lcom/itextpdf/layout/property/UnitValue;

    const/4 v5, 0x0

    invoke-direct {v13, v15, v5}, Lcom/itextpdf/layout/property/UnitValue;-><init>(IF)V

    goto :goto_2

    :cond_1
    if-ne v6, v4, :cond_2

    new-instance v13, Lcom/itextpdf/layout/property/UnitValue;

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-direct {v13, v15, v5}, Lcom/itextpdf/layout/property/UnitValue;-><init>(IF)V

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_2
    move-object v5, v13

    .line 183
    .local v5, "offset":Lcom/itextpdf/layout/property/UnitValue;
    invoke-static {v11, v5}, Lcom/itextpdf/styledxmlparser/css/util/CssGradientUtil;->createStopColor([FLcom/itextpdf/layout/property/UnitValue;)Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    move-result-object v3

    .line 184
    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->addColorStop(Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;)Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;

    .line 185
    .end local v5    # "offset":Lcom/itextpdf/layout/property/UnitValue;
    goto :goto_4

    .line 186
    :cond_3
    move/from16 v14, p2

    const/4 v5, 0x1

    .local v5, "j":I
    :goto_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    if-ge v5, v15, :cond_6

    .line 187
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-static {v15}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isNumericValue(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 193
    nop

    .line 194
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-static {v15, v1, v2}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseLengthValueToPt(Ljava/lang/String;FF)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v15

    .line 195
    .local v15, "offset":Lcom/itextpdf/layout/property/UnitValue;
    if-eqz v15, :cond_4

    .line 199
    invoke-static {v11, v15}, Lcom/itextpdf/styledxmlparser/css/util/CssGradientUtil;->createStopColor([FLcom/itextpdf/layout/property/UnitValue;)Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    move-result-object v3

    .line 200
    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->addColorStop(Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;)Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;

    .line 186
    .end local v15    # "offset":Lcom/itextpdf/layout/property/UnitValue;
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 196
    .restart local v15    # "offset":Lcom/itextpdf/layout/property/UnitValue;
    :cond_4
    new-instance v0, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;

    move-object/from16 v16, v3

    const/4 v3, 0x1

    .end local v3    # "lastCreatedStopColor":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    .local v16, "lastCreatedStopColor":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    new-array v3, v3, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v8, v3, v17

    .line 197
    invoke-static {v13, v3}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    .end local v15    # "offset":Lcom/itextpdf/layout/property/UnitValue;
    .end local v16    # "lastCreatedStopColor":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    .restart local v3    # "lastCreatedStopColor":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    :cond_5
    move-object/from16 v16, v3

    const/4 v3, 0x1

    const/16 v17, 0x0

    .end local v3    # "lastCreatedStopColor":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    .restart local v16    # "lastCreatedStopColor":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    new-instance v0, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v8, v3, v17

    .line 191
    invoke-static {v13, v3}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    .end local v16    # "lastCreatedStopColor":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    .restart local v3    # "lastCreatedStopColor":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    :cond_6
    move-object/from16 v16, v3

    .line 203
    .end local v5    # "j":I
    .end local v11    # "rgba":[F
    :goto_4
    goto :goto_5

    .line 205
    :cond_7
    move/from16 v14, p2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_a

    if-eqz v3, :cond_a

    .line 207
    invoke-virtual {v3}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getHintOffsetType()Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    move-result-object v0

    sget-object v5, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;->NONE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    if-ne v0, v5, :cond_a

    if-eq v6, v4, :cond_a

    .line 214
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v1, v2}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseLengthValueToPt(Ljava/lang/String;FF)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    .line 215
    .local v0, "hint":Lcom/itextpdf/layout/property/UnitValue;
    if-eqz v0, :cond_9

    .line 219
    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->getUnitType()I

    move-result v5

    if-ne v5, v15, :cond_8

    .line 220
    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v5

    const/high16 v11, 0x42c80000    # 100.0f

    div-float/2addr v5, v11

    float-to-double v1, v5

    sget-object v5, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;->RELATIVE_ON_GRADIENT:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    invoke-virtual {v3, v1, v2, v5}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->setHint(DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;)Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    goto :goto_5

    .line 222
    :cond_8
    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v1

    float-to-double v1, v1

    sget-object v5, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;->ABSOLUTE_ON_GRADIENT:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    invoke-virtual {v3, v1, v2, v5}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->setHint(DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;)Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 162
    .end local v0    # "hint":Lcom/itextpdf/layout/property/UnitValue;
    .end local v8    # "argument":Ljava/lang/String;
    .end local v9    # "elementsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "tokenizer":Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;
    .end local v12    # "nextToken":Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;
    :goto_5
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 216
    .restart local v0    # "hint":Lcom/itextpdf/layout/property/UnitValue;
    .restart local v8    # "argument":Ljava/lang/String;
    .restart local v9    # "elementsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "tokenizer":Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;
    .restart local v12    # "nextToken":Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;
    :cond_9
    new-instance v1, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v2, v5

    .line 217
    invoke-static {v13, v2}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    .end local v0    # "hint":Lcom/itextpdf/layout/property/UnitValue;
    :cond_a
    new-instance v0, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v8, v1, v2

    .line 212
    invoke-static {v13, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_b
    move/from16 v14, p2

    .line 172
    new-instance v0, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v8, v1, v2

    .line 173
    invoke-static {v13, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    .end local v8    # "argument":Ljava/lang/String;
    .end local v9    # "elementsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "tokenizer":Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;
    .end local v12    # "nextToken":Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;
    :cond_c
    move-object/from16 v7, p1

    move/from16 v14, p2

    .line 226
    .end local v6    # "i":I
    return-void
.end method

.method private static createStopColor([FLcom/itextpdf/layout/property/UnitValue;)Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    .locals 4
    .param p0, "rgba"    # [F
    .param p1, "offset"    # Lcom/itextpdf/layout/property/UnitValue;

    .line 283
    if-nez p1, :cond_0

    .line 284
    sget-object v0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->AUTO:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    .line 285
    .local v0, "offsetType":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;
    const-wide/16 v1, 0x0

    .local v1, "offsetValue":D
    goto :goto_0

    .line 286
    .end local v0    # "offsetType":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;
    .end local v1    # "offsetValue":D
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/layout/property/UnitValue;->getUnitType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 287
    sget-object v0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->ABSOLUTE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    .line 288
    .restart local v0    # "offsetType":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;
    invoke-virtual {p1}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v1

    float-to-double v1, v1

    .restart local v1    # "offsetValue":D
    goto :goto_0

    .line 290
    .end local v0    # "offsetType":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;
    .end local v1    # "offsetValue":D
    :cond_1
    sget-object v0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->RELATIVE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    .line 291
    .restart local v0    # "offsetType":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;
    invoke-virtual {p1}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    .line 295
    .restart local v1    # "offsetValue":D
    :goto_0
    new-instance v3, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    invoke-direct {v3, p0, v1, v2, v0}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;-><init>([FDLcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;)V

    return-object v3
.end method

.method public static isCssLinearGradientValue(Ljava/lang/String;)Z
    .locals 3
    .param p0, "cssValue"    # Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 65
    return v0

    .line 67
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "normalizedValue":Ljava/lang/String;
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    const-string v2, "linear-gradient("

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 70
    const-string/jumbo v2, "repeating-linear-gradient("

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 68
    :goto_0
    return v0
.end method

.method public static parseCssLinearGradient(Ljava/lang/String;FF)Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;
    .locals 9
    .param p0, "cssGradientValue"    # Ljava/lang/String;
    .param p1, "emValue"    # F
    .param p2, "remValue"    # F

    .line 87
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssGradientUtil;->isCssLinearGradientValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 88
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "isRepeating":Z
    const/4 v1, 0x0

    .line 91
    .local v1, "argumentsPart":Ljava/lang/String;
    const-string v2, "linear-gradient("

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 92
    nop

    .line 93
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    .line 92
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 94
    const/4 v0, 0x0

    goto :goto_0

    .line 95
    :cond_0
    const-string/jumbo v2, "repeating-linear-gradient("

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    nop

    .line 97
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    .line 96
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 98
    const/4 v0, 0x1

    .line 101
    :cond_1
    :goto_0
    if-eqz v1, :cond_7

    .line 102
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v2, "argumentsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v3, "buff":Ljava/lang/StringBuilder;
    new-instance v5, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;

    invoke-direct {v5, v1}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;-><init>(Ljava/lang/String;)V

    .line 106
    .local v5, "tokenizer":Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;
    :cond_2
    :goto_1
    invoke-virtual {v5}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->getNextValidToken()Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;

    move-result-object v6

    move-object v7, v6

    .local v7, "nextToken":Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;
    if-eqz v6, :cond_4

    .line 107
    invoke-virtual {v7}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;->getType()Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;

    move-result-object v6

    sget-object v8, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;->COMMA:Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;

    if-ne v6, v8, :cond_3

    .line 108
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_2

    .line 109
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v6

    goto :goto_1

    .line 113
    :cond_3
    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v7}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 116
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_5

    .line 117
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 123
    invoke-static {v2, v0, p1, p2}, Lcom/itextpdf/styledxmlparser/css/util/CssGradientUtil;->parseCssLinearGradient(Ljava/util/List;ZFF)Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;

    move-result-object v4

    return-object v4

    .line 120
    :cond_6
    new-instance v6, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v4, v8

    const-string v8, "Invalid gradient function arguments list: {0}"

    invoke-static {v8, v4}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 126
    .end local v0    # "isRepeating":Z
    .end local v1    # "argumentsPart":Ljava/lang/String;
    .end local v2    # "argumentsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "buff":Ljava/lang/StringBuilder;
    .end local v5    # "tokenizer":Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;
    .end local v7    # "nextToken":Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method private static parseCssLinearGradient(Ljava/util/List;ZFF)Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;
    .locals 7
    .param p1, "isRepeating"    # Z
    .param p2, "emValue"    # F
    .param p3, "remValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZFF)",
            "Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;"
        }
    .end annotation

    .line 131
    .local p0, "argumentsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;

    invoke-direct {v0}, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;-><init>()V

    .line 133
    .local v0, "builder":Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;
    if-eqz p1, :cond_0

    sget-object v1, Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;->REPEAT:Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;->PAD:Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;

    .line 134
    .local v1, "gradientSpreadMethod":Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;
    :goto_0
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;->setSpreadMethod(Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;)Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;

    .line 137
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 138
    .local v2, "firstArgument":Ljava/lang/String;
    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isAngleValue(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAngle(Ljava/lang/String;)F

    move-result v3

    float-to-double v3, v3

    .line 141
    .local v3, "radAngle":D
    neg-double v5, v3

    invoke-virtual {v0, v5, v6}, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;->setGradientDirectionAsCentralRotationAngle(D)Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;

    .line 142
    const/4 v3, 0x1

    .line 143
    .local v3, "colorStopListStartIndex":I
    goto :goto_1

    .end local v3    # "colorStopListStartIndex":I
    :cond_1
    const-string/jumbo v3, "to "

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 144
    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/css/util/CssGradientUtil;->parseDirection(Ljava/lang/String;)Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;

    move-result-object v3

    .line 145
    .local v3, "gradientStrategy":Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;
    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;->setGradientDirectionAsStrategy(Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;)Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;

    .line 146
    const/4 v3, 0x1

    .line 147
    .local v3, "colorStopListStartIndex":I
    goto :goto_1

    .line 149
    .end local v3    # "colorStopListStartIndex":I
    :cond_2
    sget-object v3, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;->TO_BOTTOM:Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;->setGradientDirectionAsStrategy(Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;)Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;

    .line 150
    const/4 v3, 0x0

    .line 153
    .restart local v3    # "colorStopListStartIndex":I
    :goto_1
    invoke-static {v0, p0, v3, p2, p3}, Lcom/itextpdf/styledxmlparser/css/util/CssGradientUtil;->addStopColors(Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;Ljava/util/List;IFF)V

    .line 155
    return-object v0
.end method

.method private static parseDirection(Ljava/lang/String;)Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;
    .locals 11
    .param p0, "argument"    # Ljava/lang/String;

    .line 229
    const-string v0, "\\s+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "elementsList":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    const-string v3, "Invalid direction string: {0}"

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-lt v1, v5, :cond_d

    .line 234
    const/4 v1, 0x0

    .line 235
    .local v1, "topCount":I
    const/4 v5, 0x0

    .line 236
    .local v5, "bottomCount":I
    const/4 v6, 0x0

    .line 237
    .local v6, "leftCount":I
    const/4 v7, 0x0

    .line 238
    .local v7, "rightCount":I
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_0
    array-length v9, v0

    if-ge v8, v9, :cond_4

    .line 239
    aget-object v9, v0, v8

    const-string/jumbo v10, "top"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 241
    :cond_0
    aget-object v9, v0, v8

    const-string v10, "bottom"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 242
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 243
    :cond_1
    aget-object v9, v0, v8

    const-string v10, "left"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 244
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 245
    :cond_2
    aget-object v9, v0, v8

    const-string/jumbo v10, "right"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 246
    add-int/lit8 v7, v7, 0x1

    .line 238
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 248
    :cond_3
    new-instance v9, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    .line 249
    invoke-static {v3, v4}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 253
    .end local v8    # "i":I
    :cond_4
    if-ne v1, v4, :cond_7

    if-nez v5, :cond_7

    .line 254
    if-ne v6, v4, :cond_5

    if-nez v7, :cond_5

    .line 255
    sget-object v2, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;->TO_TOP_LEFT:Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;

    return-object v2

    .line 256
    :cond_5
    if-nez v6, :cond_6

    if-ne v7, v4, :cond_6

    .line 257
    sget-object v2, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;->TO_TOP_RIGHT:Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;

    return-object v2

    .line 258
    :cond_6
    if-nez v6, :cond_c

    if-nez v7, :cond_c

    .line 259
    sget-object v2, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;->TO_TOP:Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;

    return-object v2

    .line 261
    :cond_7
    if-nez v1, :cond_a

    if-ne v5, v4, :cond_a

    .line 262
    if-ne v6, v4, :cond_8

    if-nez v7, :cond_8

    .line 263
    sget-object v2, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;->TO_BOTTOM_LEFT:Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;

    return-object v2

    .line 264
    :cond_8
    if-nez v6, :cond_9

    if-ne v7, v4, :cond_9

    .line 265
    sget-object v2, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;->TO_BOTTOM_RIGHT:Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;

    return-object v2

    .line 266
    :cond_9
    if-nez v6, :cond_c

    if-nez v7, :cond_c

    .line 267
    sget-object v2, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;->TO_BOTTOM:Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;

    return-object v2

    .line 269
    :cond_a
    if-nez v1, :cond_c

    if-nez v5, :cond_c

    .line 270
    if-ne v6, v4, :cond_b

    if-nez v7, :cond_b

    .line 271
    sget-object v2, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;->TO_LEFT:Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;

    return-object v2

    .line 272
    :cond_b
    if-nez v6, :cond_c

    if-ne v7, v4, :cond_c

    .line 273
    sget-object v2, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;->TO_RIGHT:Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;

    return-object v2

    .line 276
    :cond_c
    new-instance v8, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    .line 277
    invoke-static {v3, v4}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 231
    .end local v1    # "topCount":I
    .end local v5    # "bottomCount":I
    .end local v6    # "leftCount":I
    .end local v7    # "rightCount":I
    :cond_d
    new-instance v1, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    .line 232
    invoke-static {v3, v4}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
