.class public Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;
.super Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;
.source "PathSvgNodeRenderer.java"

# interfaces
.implements Lcom/itextpdf/svg/renderers/IMarkerCapable;


# static fields
.field private static final INVALID_OPERATOR_REGEX:Ljava/lang/String; = "(?:(?![mzlhvcsqtae])\\p{L})"

.field private static final SPACE_CHAR:Ljava/lang/String; = " "

.field private static final SPLIT_PATTERN:Ljava/util/regex/Pattern;

.field private static invalidRegexPattern:Ljava/util/regex/Pattern;


# instance fields
.field private zOperator:Lcom/itextpdf/svg/renderers/path/impl/ClosePath;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 88
    const-string v0, "(?:(?![mzlhvcsqtae])\\p{L})"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->invalidRegexPattern:Ljava/util/regex/Pattern;

    .line 106
    const-string v0, "(?=[mlhvcsqtaz])"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->zOperator:Lcom/itextpdf/svg/renderers/path/impl/ClosePath;

    return-void
.end method

.method private addMoveToShapes(Lcom/itextpdf/svg/renderers/path/IPathShape;[Ljava/lang/String;Lcom/itextpdf/svg/renderers/path/IPathShape;)Ljava/util/List;
    .locals 8
    .param p1, "pathShape"    # Lcom/itextpdf/svg/renderers/path/IPathShape;
    .param p2, "pathProperties"    # [Ljava/lang/String;
    .param p3, "beforeMoveShape"    # Lcom/itextpdf/svg/renderers/path/IPathShape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/svg/renderers/path/IPathShape;",
            "[",
            "Ljava/lang/String;",
            "Lcom/itextpdf/svg/renderers/path/IPathShape;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/svg/renderers/path/IPathShape;",
            ">;"
        }
    .end annotation

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v0, "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/svg/renderers/path/IPathShape;>;"
    const/4 v1, 0x2

    .line 238
    .local v1, "argumentCount":I
    nop

    .line 239
    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-static {p2, v2, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 238
    invoke-direct {p0, p1, p3, v2}, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->getShapeCoordinates(Lcom/itextpdf/svg/renderers/path/IPathShape;Lcom/itextpdf/svg/renderers/path/IPathShape;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, "shapeCoordinates":[Ljava/lang/String;
    new-instance v4, Lcom/itextpdf/svg/renderers/path/impl/ClosePath;

    invoke-interface {p1}, Lcom/itextpdf/svg/renderers/path/IPathShape;->isRelative()Z

    move-result v5

    invoke-direct {v4, v5}, Lcom/itextpdf/svg/renderers/path/impl/ClosePath;-><init>(Z)V

    iput-object v4, p0, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->zOperator:Lcom/itextpdf/svg/renderers/path/impl/ClosePath;

    .line 241
    invoke-static {p3}, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->getCurrentPoint(Lcom/itextpdf/svg/renderers/path/IPathShape;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v4

    .line 242
    .local v4, "currentPointBeforeMove":Lcom/itextpdf/kernel/geom/Point;
    iget-object v5, p0, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->zOperator:Lcom/itextpdf/svg/renderers/path/impl/ClosePath;

    invoke-virtual {v5, v2, v4}, Lcom/itextpdf/svg/renderers/path/impl/ClosePath;->setCoordinates([Ljava/lang/String;Lcom/itextpdf/kernel/geom/Point;)V

    .line 243
    invoke-interface {p1, v2, v4}, Lcom/itextpdf/svg/renderers/path/IPathShape;->setCoordinates([Ljava/lang/String;Lcom/itextpdf/kernel/geom/Point;)V

    .line 244
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    move-object v5, p1

    .line 246
    .local v5, "previousShape":Lcom/itextpdf/svg/renderers/path/IPathShape;
    array-length v6, p2

    if-le v6, v3, :cond_2

    .line 247
    const/4 v3, 0x3

    .local v3, "index":I
    :goto_0
    array-length v6, p2

    if-ge v3, v6, :cond_2

    .line 248
    add-int/lit8 v6, v3, 0x2

    array-length v7, p2

    if-le v6, v7, :cond_0

    .line 249
    goto :goto_2

    .line 251
    :cond_0
    invoke-interface {p1}, Lcom/itextpdf/svg/renderers/path/IPathShape;->isRelative()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "l"

    invoke-static {v6}, Lcom/itextpdf/svg/renderers/path/SvgPathShapeFactory;->createPathShape(Ljava/lang/String;)Lcom/itextpdf/svg/renderers/path/IPathShape;

    move-result-object v6

    goto :goto_1

    .line 252
    :cond_1
    const-string v6, "L"

    invoke-static {v6}, Lcom/itextpdf/svg/renderers/path/SvgPathShapeFactory;->createPathShape(Ljava/lang/String;)Lcom/itextpdf/svg/renderers/path/IPathShape;

    move-result-object v6

    :goto_1
    move-object p1, v6

    .line 253
    add-int/lit8 v6, v3, 0x2

    .line 254
    invoke-static {p2, v3, v6}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 253
    invoke-direct {p0, p1, v5, v6}, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->getShapeCoordinates(Lcom/itextpdf/svg/renderers/path/IPathShape;Lcom/itextpdf/svg/renderers/path/IPathShape;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 255
    invoke-interface {v5}, Lcom/itextpdf/svg/renderers/path/IPathShape;->getEndingPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v6

    invoke-interface {p1, v2, v6}, Lcom/itextpdf/svg/renderers/path/IPathShape;->setCoordinates([Ljava/lang/String;Lcom/itextpdf/kernel/geom/Point;)V

    .line 256
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    move-object v5, p1

    .line 247
    add-int/2addr v3, v1

    goto :goto_0

    .line 260
    .end local v3    # "index":I
    :cond_2
    :goto_2
    return-object v0
.end method

.method private static concatenate([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "first"    # [Ljava/lang/String;
    .param p1, "second"    # [Ljava/lang/String;

    .line 286
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 287
    .local v0, "arr":[Ljava/lang/String;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    return-object v0
.end method

.method private static endsWithNonWhitespace(Ljava/lang/StringBuilder;)Z
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static getCurrentPoint(Lcom/itextpdf/svg/renderers/path/IPathShape;)Lcom/itextpdf/kernel/geom/Point;
    .locals 2
    .param p0, "previousShape"    # Lcom/itextpdf/svg/renderers/path/IPathShape;

    .line 421
    if-nez p0, :cond_0

    new-instance v0, Lcom/itextpdf/kernel/geom/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/itextpdf/kernel/geom/Point;-><init>(II)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/itextpdf/svg/renderers/path/IPathShape;->getEndingPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getShapeCoordinates(Lcom/itextpdf/svg/renderers/path/IPathShape;Lcom/itextpdf/svg/renderers/path/IPathShape;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 12
    .param p1, "shape"    # Lcom/itextpdf/svg/renderers/path/IPathShape;
    .param p2, "previousShape"    # Lcom/itextpdf/svg/renderers/path/IPathShape;
    .param p3, "pathProperties"    # [Ljava/lang/String;

    .line 156
    instance-of v0, p1, Lcom/itextpdf/svg/renderers/path/impl/ClosePath;

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, 0x0

    return-object v0

    .line 159
    :cond_0
    const/4 v0, 0x0

    .line 160
    .local v0, "shapeCoordinates":[Ljava/lang/String;
    instance-of v1, p1, Lcom/itextpdf/svg/renderers/path/impl/SmoothSCurveTo;

    if-nez v1, :cond_1

    instance-of v1, p1, Lcom/itextpdf/svg/renderers/path/impl/QuadraticSmoothCurveTo;

    if-eqz v1, :cond_3

    .line 161
    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 162
    .local v1, "startingControlPoint":[Ljava/lang/String;
    if-eqz p2, :cond_5

    .line 163
    invoke-interface {p2}, Lcom/itextpdf/svg/renderers/path/IPathShape;->getEndingPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v2

    .line 165
    .local v2, "previousEndPoint":Lcom/itextpdf/kernel/geom/Point;
    instance-of v3, p2, Lcom/itextpdf/svg/renderers/path/impl/IControlPointCurve;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 166
    move-object v3, p2

    check-cast v3, Lcom/itextpdf/svg/renderers/path/impl/IControlPointCurve;

    invoke-interface {v3}, Lcom/itextpdf/svg/renderers/path/impl/IControlPointCurve;->getLastControlPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v3

    .line 167
    .local v3, "lastControlPoint":Lcom/itextpdf/kernel/geom/Point;
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v10

    sub-double/2addr v6, v10

    double-to-float v6, v6

    .line 168
    .local v6, "reflectedX":F
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v10

    mul-double/2addr v10, v8

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v7

    sub-double/2addr v10, v7

    double-to-float v7, v10

    .line 170
    .local v7, "reflectedY":F
    invoke-static {v6}, Lcom/itextpdf/svg/utils/SvgCssUtils;->convertFloatToString(F)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v5

    .line 171
    invoke-static {v7}, Lcom/itextpdf/svg/utils/SvgCssUtils;->convertFloatToString(F)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 172
    .end local v3    # "lastControlPoint":Lcom/itextpdf/kernel/geom/Point;
    .end local v6    # "reflectedX":F
    .end local v7    # "reflectedY":F
    goto :goto_0

    .line 173
    :cond_2
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/itextpdf/svg/utils/SvgCssUtils;->convertDoubleToString(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    .line 174
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/itextpdf/svg/utils/SvgCssUtils;->convertDoubleToString(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    .line 176
    .end local v2    # "previousEndPoint":Lcom/itextpdf/kernel/geom/Point;
    :goto_0
    nop

    .line 179
    invoke-static {v1, p3}, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->concatenate([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 181
    .end local v1    # "startingControlPoint":[Ljava/lang/String;
    :cond_3
    if-nez v0, :cond_4

    .line 182
    move-object v0, p3

    .line 184
    :cond_4
    return-object v0

    .line 177
    .restart local v1    # "startingControlPoint":[Ljava/lang/String;
    :cond_5
    new-instance v2, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v3, "The smooth curve operations (S, s, T, t) may not be used as a first operator in path."

    invoke-direct {v2, v3}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private processPathOperator([Ljava/lang/String;Lcom/itextpdf/svg/renderers/path/IPathShape;)Ljava/util/List;
    .locals 7
    .param p1, "pathProperties"    # [Ljava/lang/String;
    .param p2, "previousShape"    # Lcom/itextpdf/svg/renderers/path/IPathShape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/itextpdf/svg/renderers/path/IPathShape;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/svg/renderers/path/IPathShape;",
            ">;"
        }
    .end annotation

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v0, "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/svg/renderers/path/IPathShape;>;"
    array-length v1, p1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    aget-object v2, p1, v1

    .line 199
    invoke-static {v2}, Lcom/itextpdf/svg/renderers/path/SvgPathShapeFactory;->getArgumentCount(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    goto :goto_2

    .line 203
    :cond_0
    aget-object v2, p1, v1

    invoke-static {v2}, Lcom/itextpdf/svg/renderers/path/SvgPathShapeFactory;->getArgumentCount(Ljava/lang/String;)I

    move-result v2

    .line 204
    .local v2, "argumentCount":I
    if-nez v2, :cond_2

    .line 205
    if-eqz p2, :cond_1

    .line 208
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->zOperator:Lcom/itextpdf/svg/renderers/path/impl/ClosePath;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    return-object v0

    .line 206
    :cond_1
    new-instance v1, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v3, "The close path operator (Z) may not be used before a move to operation (M)"

    invoke-direct {v1, v3}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    :cond_2
    const/4 v3, 0x1

    .local v3, "index":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_7

    .line 212
    add-int v4, v3, v2

    array-length v5, p1

    if-le v4, v5, :cond_3

    .line 213
    goto :goto_1

    .line 215
    :cond_3
    aget-object v4, p1, v1

    invoke-static {v4}, Lcom/itextpdf/svg/renderers/path/SvgPathShapeFactory;->createPathShape(Ljava/lang/String;)Lcom/itextpdf/svg/renderers/path/IPathShape;

    move-result-object v4

    .line 216
    .local v4, "pathShape":Lcom/itextpdf/svg/renderers/path/IPathShape;
    instance-of v5, v4, Lcom/itextpdf/svg/renderers/path/impl/MoveTo;

    if-eqz v5, :cond_4

    .line 217
    invoke-direct {p0, v4, p1, p2}, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->addMoveToShapes(Lcom/itextpdf/svg/renderers/path/IPathShape;[Ljava/lang/String;Lcom/itextpdf/svg/renderers/path/IPathShape;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 218
    return-object v0

    .line 221
    :cond_4
    add-int v5, v3, v2

    .line 222
    invoke-static {p1, v3, v5}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 221
    invoke-direct {p0, v4, p2, v5}, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->getShapeCoordinates(Lcom/itextpdf/svg/renderers/path/IPathShape;Lcom/itextpdf/svg/renderers/path/IPathShape;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 223
    .local v5, "shapeCoordinates":[Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 224
    if-eqz v5, :cond_5

    .line 225
    invoke-static {p2}, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->getCurrentPoint(Lcom/itextpdf/svg/renderers/path/IPathShape;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/itextpdf/svg/renderers/path/IPathShape;->setCoordinates([Ljava/lang/String;Lcom/itextpdf/kernel/geom/Point;)V

    .line 227
    :cond_5
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_6
    move-object p2, v4

    .line 211
    .end local v4    # "pathShape":Lcom/itextpdf/svg/renderers/path/IPathShape;
    .end local v5    # "shapeCoordinates":[Ljava/lang/String;
    add-int/2addr v3, v2

    goto :goto_0

    .line 231
    .end local v3    # "index":I
    :cond_7
    :goto_1
    return-object v0

    .line 200
    .end local v2    # "argumentCount":I
    :cond_8
    :goto_2
    return-object v0
.end method

.method static splitPathStringIntoOperators(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 367
    sget-object v0, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method containsInvalidAttributes(Ljava/lang/String;)Z
    .locals 1
    .param p1, "attributes"    # Ljava/lang/String;

    .line 294
    sget-object v0, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->invalidRegexPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method public createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 125
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;-><init>()V

    .line 126
    .local v0, "copy":Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->deepCopyAttributesAndStyles(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 127
    return-object v0
.end method

.method public doDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 3
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 116
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 117
    .local v0, "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    const-string v1, "% path\n"

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->writeLiteral(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 118
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->getShapes()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/svg/renderers/path/IPathShape;

    .line 119
    .local v2, "item":Lcom/itextpdf/svg/renderers/path/IPathShape;
    invoke-interface {v2, v0}, Lcom/itextpdf/svg/renderers/path/IPathShape;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 120
    .end local v2    # "item":Lcom/itextpdf/svg/renderers/path/IPathShape;
    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method

.method public drawMarker(Lcom/itextpdf/svg/renderers/SvgDrawContext;Lcom/itextpdf/svg/MarkerVertexType;)V
    .locals 5
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;
    .param p2, "markerVertexType"    # Lcom/itextpdf/svg/MarkerVertexType;

    .line 376
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->getShapes()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 377
    .local v0, "allShapesOrdered":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 378
    .local v1, "point":Lcom/itextpdf/kernel/geom/Point;
    sget-object v2, Lcom/itextpdf/svg/MarkerVertexType;->MARKER_START:Lcom/itextpdf/svg/MarkerVertexType;

    invoke-virtual {v2, p2}, Lcom/itextpdf/svg/MarkerVertexType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 379
    const/4 v2, 0x0

    aget-object v2, v0, v2

    check-cast v2, Lcom/itextpdf/svg/renderers/path/impl/AbstractPathShape;

    invoke-virtual {v2}, Lcom/itextpdf/svg/renderers/path/impl/AbstractPathShape;->getEndingPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v1

    goto :goto_0

    .line 380
    :cond_0
    sget-object v2, Lcom/itextpdf/svg/MarkerVertexType;->MARKER_END:Lcom/itextpdf/svg/MarkerVertexType;

    invoke-virtual {v2, p2}, Lcom/itextpdf/svg/MarkerVertexType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 381
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    check-cast v2, Lcom/itextpdf/svg/renderers/path/impl/AbstractPathShape;

    .line 382
    invoke-virtual {v2}, Lcom/itextpdf/svg/renderers/path/impl/AbstractPathShape;->getEndingPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v1

    .line 384
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 385
    iget-wide v2, v1, Lcom/itextpdf/kernel/geom/Point;->x:D

    invoke-static {v2, v3}, Lcom/itextpdf/svg/utils/SvgCssUtils;->convertDoubleToString(D)Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, "moveX":Ljava/lang/String;
    iget-wide v3, v1, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-static {v3, v4}, Lcom/itextpdf/svg/utils/SvgCssUtils;->convertDoubleToString(D)Ljava/lang/String;

    move-result-object v3

    .line 387
    .local v3, "moveY":Ljava/lang/String;
    invoke-static {p1, v2, v3, p2, p0}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->drawMarker(Lcom/itextpdf/svg/renderers/SvgDrawContext;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/svg/MarkerVertexType;Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;)V

    .line 389
    .end local v2    # "moveX":Ljava/lang/String;
    .end local v3    # "moveY":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public getAutoOrientAngle(Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;Z)D
    .locals 12
    .param p1, "marker"    # Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;
    .param p2, "reverse"    # Z

    .line 393
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->getShapes()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 394
    .local v0, "pathShapes":[Ljava/lang/Object;
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 395
    new-instance v1, Lcom/itextpdf/kernel/geom/Vector;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v3}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    .line 396
    .local v1, "v":Lcom/itextpdf/kernel/geom/Vector;
    iget-object v4, p1, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v5, "marker"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v6, "marker-end"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 398
    array-length v4, v0

    sub-int/2addr v4, v2

    aget-object v4, v0, v4

    check-cast v4, Lcom/itextpdf/svg/renderers/path/IPathShape;

    .line 399
    .local v4, "lastShape":Lcom/itextpdf/svg/renderers/path/IPathShape;
    array-length v5, v0

    add-int/lit8 v5, v5, -0x2

    aget-object v5, v0, v5

    check-cast v5, Lcom/itextpdf/svg/renderers/path/IPathShape;

    .line 400
    .local v5, "secondToLastShape":Lcom/itextpdf/svg/renderers/path/IPathShape;
    new-instance v6, Lcom/itextpdf/kernel/geom/Vector;

    invoke-interface {v4}, Lcom/itextpdf/svg/renderers/path/IPathShape;->getEndingPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v7

    invoke-interface {v5}, Lcom/itextpdf/svg/renderers/path/IPathShape;->getEndingPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v9

    sub-double/2addr v7, v9

    double-to-float v7, v7

    .line 401
    invoke-interface {v4}, Lcom/itextpdf/svg/renderers/path/IPathShape;->getEndingPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v8

    invoke-interface {v5}, Lcom/itextpdf/svg/renderers/path/IPathShape;->getEndingPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v10

    sub-double/2addr v8, v10

    double-to-float v8, v8

    invoke-direct {v6, v7, v8, v3}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    move-object v1, v6

    .line 403
    .end local v4    # "lastShape":Lcom/itextpdf/svg/renderers/path/IPathShape;
    .end local v5    # "secondToLastShape":Lcom/itextpdf/svg/renderers/path/IPathShape;
    goto :goto_0

    :cond_0
    iget-object v4, p1, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    .line 404
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "marker-start"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 406
    const/4 v4, 0x0

    aget-object v4, v0, v4

    check-cast v4, Lcom/itextpdf/svg/renderers/path/IPathShape;

    .line 407
    .local v4, "firstShape":Lcom/itextpdf/svg/renderers/path/IPathShape;
    aget-object v5, v0, v2

    check-cast v5, Lcom/itextpdf/svg/renderers/path/IPathShape;

    .line 408
    .local v5, "secondShape":Lcom/itextpdf/svg/renderers/path/IPathShape;
    new-instance v6, Lcom/itextpdf/kernel/geom/Vector;

    invoke-interface {v5}, Lcom/itextpdf/svg/renderers/path/IPathShape;->getEndingPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v7

    invoke-interface {v4}, Lcom/itextpdf/svg/renderers/path/IPathShape;->getEndingPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v9

    sub-double/2addr v7, v9

    double-to-float v7, v7

    .line 409
    invoke-interface {v5}, Lcom/itextpdf/svg/renderers/path/IPathShape;->getEndingPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v8

    invoke-interface {v4}, Lcom/itextpdf/svg/renderers/path/IPathShape;->getEndingPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v10

    sub-double/2addr v8, v10

    double-to-float v8, v8

    invoke-direct {v6, v7, v8, v3}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    move-object v1, v6

    .line 413
    .end local v4    # "firstShape":Lcom/itextpdf/svg/renderers/path/IPathShape;
    .end local v5    # "secondShape":Lcom/itextpdf/svg/renderers/path/IPathShape;
    :cond_1
    :goto_0
    new-instance v4, Lcom/itextpdf/kernel/geom/Vector;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v3, v3}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    .line 414
    .local v4, "xAxis":Lcom/itextpdf/kernel/geom/Vector;
    invoke-static {v4, v1}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->calculateAngleBetweenTwoVectors(Lcom/itextpdf/kernel/geom/Vector;Lcom/itextpdf/kernel/geom/Vector;)D

    move-result-wide v5

    .line 415
    .local v5, "rotAngle":D
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v2

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    if-nez p2, :cond_2

    move-wide v2, v5

    goto :goto_1

    :cond_2
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    mul-double/2addr v2, v5

    :goto_1
    return-wide v2

    .line 417
    .end local v1    # "v":Lcom/itextpdf/kernel/geom/Vector;
    .end local v4    # "xAxis":Lcom/itextpdf/kernel/geom/Vector;
    .end local v5    # "rotAngle":D
    :cond_3
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method protected getObjectBoundingBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 7
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "lastPoint":Lcom/itextpdf/kernel/geom/Point;
    const/4 v1, 0x0

    .line 134
    .local v1, "commonRectangle":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->getShapes()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/svg/renderers/path/IPathShape;

    .line 135
    .local v3, "item":Lcom/itextpdf/svg/renderers/path/IPathShape;
    if-nez v0, :cond_0

    .line 136
    invoke-interface {v3}, Lcom/itextpdf/svg/renderers/path/IPathShape;->getEndingPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    .line 138
    :cond_0
    instance-of v4, v3, Lcom/itextpdf/svg/renderers/path/impl/AbstractPathShape;

    if-eqz v4, :cond_1

    .line 139
    move-object v4, v3

    check-cast v4, Lcom/itextpdf/svg/renderers/path/impl/AbstractPathShape;

    invoke-virtual {v4, v0}, Lcom/itextpdf/svg/renderers/path/impl/AbstractPathShape;->getPathShapeRectangle(Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    .line 140
    .local v4, "rectangle":Lcom/itextpdf/kernel/geom/Rectangle;
    const/4 v5, 0x2

    new-array v5, v5, [Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v4, v5, v6

    invoke-static {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getCommonRectangle([Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 142
    .end local v4    # "rectangle":Lcom/itextpdf/kernel/geom/Rectangle;
    :cond_1
    invoke-interface {v3}, Lcom/itextpdf/svg/renderers/path/IPathShape;->getEndingPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    .line 143
    .end local v3    # "item":Lcom/itextpdf/svg/renderers/path/IPathShape;
    goto :goto_0

    .line 144
    :cond_2
    return-object v1
.end method

.method getShapes()Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/svg/renderers/path/IPathShape;",
            ">;"
        }
    .end annotation

    .line 273
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->parsePathOperations()Ljava/util/Collection;

    move-result-object v0

    .line 274
    .local v0, "parsedResults":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v1, "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/svg/renderers/path/IPathShape;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 277
    .local v3, "parsedResult":Ljava/lang/String;
    const-string v4, " +"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 278
    .local v4, "pathProperties":[Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/svg/renderers/path/IPathShape;

    .line 279
    .local v5, "previousShape":Lcom/itextpdf/svg/renderers/path/IPathShape;
    :goto_1
    invoke-direct {p0, v4, v5}, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->processPathOperator([Ljava/lang/String;Lcom/itextpdf/svg/renderers/path/IPathShape;)Ljava/util/List;

    move-result-object v6

    .line 280
    .local v6, "operatorShapes":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/svg/renderers/path/IPathShape;>;"
    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 281
    .end local v3    # "parsedResult":Ljava/lang/String;
    .end local v4    # "pathProperties":[Ljava/lang/String;
    .end local v5    # "previousShape":Lcom/itextpdf/svg/renderers/path/IPathShape;
    .end local v6    # "operatorShapes":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/svg/renderers/path/IPathShape;>;"
    goto :goto_0

    .line 282
    :cond_1
    return-object v1
.end method

.method parsePathOperations()Ljava/util/Collection;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v0, "result":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v2, "d"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 300
    .local v1, "attributes":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 303
    invoke-virtual {p0, v1}, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->containsInvalidAttributes(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    .line 308
    invoke-static {v1}, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->splitPathStringIntoOperators(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, "operators":[Ljava/lang/String;
    array-length v5, v2

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v2, v6

    .line 311
    .local v7, "inst":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 312
    .local v8, "instTrim":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 313
    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 314
    .local v9, "instruction":C
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 316
    .local v10, "temp":Ljava/lang/String;
    invoke-virtual {p0, v10}, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->separateDecimalPoints(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 317
    invoke-interface {v0, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 310
    .end local v7    # "inst":Ljava/lang/String;
    .end local v8    # "instTrim":Ljava/lang/String;
    .end local v9    # "instruction":C
    .end local v10    # "temp":Ljava/lang/String;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 321
    :cond_1
    return-object v0

    .line 304
    .end local v2    # "operators":[Ljava/lang/String;
    :cond_2
    new-instance v2, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v5, "Invalid operators found in path data attribute: {0}"

    invoke-direct {v2, v5}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    .line 305
    invoke-virtual {v2, v3}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/PdfException;

    move-result-object v2

    throw v2

    .line 301
    :cond_3
    new-instance v2, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v3, "A Path object must have an attribute with the name \'d\'."

    invoke-direct {v2, v3}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method separateDecimalPoints(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "input"    # Ljava/lang/String;

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    .local v0, "res":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 334
    .local v1, "fractionalPartAfterDecimalPoint":Z
    const/4 v2, 0x0

    .line 335
    .local v2, "exponentSignMagnitude":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 336
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 338
    .local v4, "c":C
    const/16 v5, 0x2d

    if-eq v4, v5, :cond_0

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 339
    :cond_0
    const/4 v1, 0x0

    .line 341
    :cond_1
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 342
    const/4 v2, 0x0

    .line 346
    :cond_2
    invoke-static {v0}, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->endsWithNonWhitespace(Ljava/lang/StringBuilder;)Z

    move-result v6

    const/16 v7, 0x2e

    if-eqz v6, :cond_5

    if-ne v4, v7, :cond_3

    if-nez v1, :cond_4

    :cond_3
    if-ne v4, v5, :cond_5

    if-nez v2, :cond_5

    .line 348
    :cond_4
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    :cond_5
    if-ne v4, v7, :cond_6

    .line 352
    const/4 v1, 0x1

    goto :goto_1

    .line 353
    :cond_6
    const/16 v5, 0x65

    if-ne v4, v5, :cond_7

    .line 354
    const/4 v2, 0x1

    .line 357
    :cond_7
    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 335
    .end local v4    # "c":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 359
    .end local v3    # "i":I
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
