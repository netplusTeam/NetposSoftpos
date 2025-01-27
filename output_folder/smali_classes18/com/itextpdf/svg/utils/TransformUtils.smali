.class public final Lcom/itextpdf/svg/utils/TransformUtils;
.super Ljava/lang/Object;
.source "TransformUtils.java"


# static fields
.field private static final MATRIX:Ljava/lang/String; = "MATRIX"

.field private static final ROTATE:Ljava/lang/String; = "ROTATE"

.field private static final SCALE:Ljava/lang/String; = "SCALE"

.field private static final SKEWX:Ljava/lang/String; = "SKEWX"

.field private static final SKEWY:Ljava/lang/String; = "SKEWY"

.field private static final TRANSLATE:Ljava/lang/String; = "TRANSLATE"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    return-void
.end method

.method private static createMatrixTransformation(Ljava/util/List;)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/itextpdf/kernel/geom/AffineTransform;"
        }
    .end annotation

    .line 305
    .local p0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 309
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 310
    .local v1, "a":F
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 311
    .local v2, "b":F
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 312
    .local v3, "c":F
    const/4 v4, 0x3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 313
    .local v4, "d":F
    const/4 v5, 0x4

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v5

    .line 314
    .local v5, "e":F
    const/4 v6, 0x5

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v6

    .line 316
    .local v6, "f":F
    new-instance v20, Lcom/itextpdf/kernel/geom/AffineTransform;

    float-to-double v8, v1

    float-to-double v10, v2

    float-to-double v12, v3

    float-to-double v14, v4

    move/from16 v21, v1

    .end local v1    # "a":F
    .local v21, "a":F
    float-to-double v0, v5

    move/from16 v22, v2

    move/from16 v23, v3

    .end local v2    # "b":F
    .end local v3    # "c":F
    .local v22, "b":F
    .local v23, "c":F
    float-to-double v2, v6

    move-object/from16 v7, v20

    move-wide/from16 v16, v0

    move-wide/from16 v18, v2

    invoke-direct/range {v7 .. v19}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>(DDDDDD)V

    return-object v20

    .line 306
    .end local v4    # "d":F
    .end local v5    # "e":F
    .end local v6    # "f":F
    .end local v21    # "a":F
    .end local v22    # "b":F
    .end local v23    # "c":F
    :cond_0
    new-instance v0, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v1, "Transformation doesn\'t contain the right number of values."

    invoke-direct {v0, v1}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createRotationTransformation(Ljava/util/List;)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/itextpdf/kernel/geom/AffineTransform;"
        }
    .end annotation

    .line 249
    .local p0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    new-instance v0, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v1, "Transformation doesn\'t contain the right number of values."

    invoke-direct {v0, v1}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    .line 255
    .local v3, "angle":D
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 256
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v0

    .line 257
    .local v0, "centerX":F
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v1

    .line 258
    .local v1, "centerY":F
    float-to-double v7, v0

    float-to-double v9, v1

    move-wide v5, v3

    invoke-static/range {v5 .. v10}, Lcom/itextpdf/kernel/geom/AffineTransform;->getRotateInstance(DDD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v2

    return-object v2

    .line 261
    .end local v0    # "centerX":F
    .end local v1    # "centerY":F
    :cond_2
    invoke-static {v3, v4}, Lcom/itextpdf/kernel/geom/AffineTransform;->getRotateInstance(D)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v0

    return-object v0
.end method

.method private static createScaleTransformation(Ljava/util/List;)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/itextpdf/kernel/geom/AffineTransform;"
        }
    .end annotation

    .line 271
    .local p0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 275
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseRelativeValue(Ljava/lang/String;F)F

    move-result v0

    .line 276
    .local v0, "scaleX":F
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_0

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseRelativeValue(Ljava/lang/String;F)F

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 278
    .local v1, "scaleY":F
    :goto_0
    float-to-double v2, v0

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Lcom/itextpdf/kernel/geom/AffineTransform;->getScaleInstance(DD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v2

    return-object v2

    .line 272
    .end local v0    # "scaleX":F
    .end local v1    # "scaleY":F
    :cond_1
    new-instance v0, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v1, "Transformation doesn\'t contain the right number of values."

    invoke-direct {v0, v1}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createSkewXTransformation(Ljava/util/List;)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/itextpdf/kernel/geom/AffineTransform;"
        }
    .end annotation

    .line 232
    .local p0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 236
    const/4 v0, 0x0

    move-object/from16 v1, p0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    .line 239
    .local v2, "tan":D
    new-instance v0, Lcom/itextpdf/kernel/geom/AffineTransform;

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-wide/16 v7, 0x0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    move-object v4, v0

    move-wide v9, v2

    invoke-direct/range {v4 .. v16}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>(DDDDDD)V

    return-object v0

    .line 233
    .end local v2    # "tan":D
    :cond_0
    move-object/from16 v1, p0

    new-instance v0, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v2, "Transformation doesn\'t contain the right number of values."

    invoke-direct {v0, v2}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createSkewYTransformation(Ljava/util/List;)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/itextpdf/kernel/geom/AffineTransform;"
        }
    .end annotation

    .line 215
    .local p0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 219
    const/4 v0, 0x0

    move-object/from16 v1, p0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    .line 222
    .local v2, "tan":D
    new-instance v0, Lcom/itextpdf/kernel/geom/AffineTransform;

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-wide/16 v9, 0x0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    move-object v4, v0

    move-wide v7, v2

    invoke-direct/range {v4 .. v16}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>(DDDDDD)V

    return-object v0

    .line 216
    .end local v2    # "tan":D
    :cond_0
    move-object/from16 v1, p0

    new-instance v0, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v2, "Transformation doesn\'t contain the right number of values."

    invoke-direct {v0, v2}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createTranslateTransformation(Ljava/util/List;)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/itextpdf/kernel/geom/AffineTransform;"
        }
    .end annotation

    .line 288
    .local p0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 292
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v0

    .line 293
    .local v0, "translateX":F
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_0

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 295
    .local v1, "translateY":F
    :goto_0
    float-to-double v2, v0

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Lcom/itextpdf/kernel/geom/AffineTransform;->getTranslateInstance(DD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v2

    return-object v2

    .line 289
    .end local v0    # "translateX":F
    .end local v1    # "translateY":F
    :cond_1
    new-instance v0, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v1, "Transformation doesn\'t contain the right number of values."

    invoke-direct {v0, v1}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getNameFromString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "transformation"    # Ljava/lang/String;

    .line 326
    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 328
    .local v1, "indexOfParenthesis":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 332
    const/4 v2, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 329
    :cond_0
    new-instance v0, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v2, "Transformation declaration is not formed correctly."

    invoke-direct {v0, v2}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getValuesFromTransformationString(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "transformation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 342
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "numbers":Ljava/lang/String;
    invoke-static {v0}, Lcom/itextpdf/svg/utils/SvgCssUtils;->splitValueList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static parseTransform(Ljava/lang/String;)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 5
    .param p0, "transform"    # Ljava/lang/String;

    .line 133
    if-eqz p0, :cond_3

    .line 137
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 141
    new-instance v0, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>()V

    .line 143
    .local v0, "matrix":Lcom/itextpdf/kernel/geom/AffineTransform;
    invoke-static {p0}, Lcom/itextpdf/svg/utils/TransformUtils;->splitString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 145
    .local v1, "listWithTransformations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 146
    .local v3, "transformation":Ljava/lang/String;
    invoke-static {v3}, Lcom/itextpdf/svg/utils/TransformUtils;->transformationStringToMatrix(Ljava/lang/String;)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v4

    .line 148
    .local v4, "newMatrix":Lcom/itextpdf/kernel/geom/AffineTransform;
    if-eqz v4, :cond_0

    .line 149
    invoke-virtual {v0, v4}, Lcom/itextpdf/kernel/geom/AffineTransform;->concatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    .line 151
    .end local v3    # "transformation":Ljava/lang/String;
    .end local v4    # "newMatrix":Lcom/itextpdf/kernel/geom/AffineTransform;
    :cond_0
    goto :goto_0

    .line 153
    :cond_1
    return-object v0

    .line 138
    .end local v0    # "matrix":Lcom/itextpdf/kernel/geom/AffineTransform;
    .end local v1    # "listWithTransformations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    new-instance v0, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v1, "The transformation value is empty."

    invoke-direct {v0, v1}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_3
    new-instance v0, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v1, "The transformation value is null."

    invoke-direct {v0, v1}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static splitString(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "transform"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ")"

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 167
    .local v1, "tokenizer":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, "trim":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 171
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .end local v3    # "trim":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 175
    :cond_1
    return-object v0
.end method

.method private static transformationStringToMatrix(Ljava/lang/String;)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 3
    .param p0, "transformation"    # Ljava/lang/String;

    .line 185
    invoke-static {p0}, Lcom/itextpdf/svg/utils/TransformUtils;->getNameFromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 190
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "SKEWY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1
    const-string v2, "SKEWX"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_2
    const-string v2, "SCALE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "TRANSLATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v2, "ROTATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_5
    const-string v2, "MATRIX"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 204
    new-instance v1, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v2, "Unsupported type of transformation."

    invoke-direct {v1, v2}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    :pswitch_0
    invoke-static {p0}, Lcom/itextpdf/svg/utils/TransformUtils;->getValuesFromTransformationString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/svg/utils/TransformUtils;->createSkewYTransformation(Ljava/util/List;)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v1

    return-object v1

    .line 200
    :pswitch_1
    invoke-static {p0}, Lcom/itextpdf/svg/utils/TransformUtils;->getValuesFromTransformationString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/svg/utils/TransformUtils;->createSkewXTransformation(Ljava/util/List;)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v1

    return-object v1

    .line 198
    :pswitch_2
    invoke-static {p0}, Lcom/itextpdf/svg/utils/TransformUtils;->getValuesFromTransformationString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/svg/utils/TransformUtils;->createRotationTransformation(Ljava/util/List;)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v1

    return-object v1

    .line 196
    :pswitch_3
    invoke-static {p0}, Lcom/itextpdf/svg/utils/TransformUtils;->getValuesFromTransformationString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/svg/utils/TransformUtils;->createScaleTransformation(Ljava/util/List;)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v1

    return-object v1

    .line 194
    :pswitch_4
    invoke-static {p0}, Lcom/itextpdf/svg/utils/TransformUtils;->getValuesFromTransformationString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/svg/utils/TransformUtils;->createTranslateTransformation(Ljava/util/List;)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v1

    return-object v1

    .line 192
    :pswitch_5
    invoke-static {p0}, Lcom/itextpdf/svg/utils/TransformUtils;->getValuesFromTransformationString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/svg/utils/TransformUtils;->createMatrixTransformation(Ljava/util/List;)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v1

    return-object v1

    .line 188
    :cond_1
    new-instance v1, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v2, "Transformation declaration is not formed correctly."

    invoke-direct {v1, v2}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x78df743f -> :sswitch_5
        -0x6f922ea5 -> :sswitch_4
        -0x1b26fed2 -> :sswitch_3
        0x4b1112a -> :sswitch_2
        0x4b4c48e -> :sswitch_1
        0x4b4c48f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
