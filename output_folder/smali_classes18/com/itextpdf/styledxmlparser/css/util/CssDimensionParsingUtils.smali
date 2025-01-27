.class public final Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;
.super Ljava/lang/Object;
.source "CssDimensionParsingUtils.java"


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static determinePositionBetweenValueAndUnit(Ljava/lang/String;)I
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .line 420
    if-nez p0, :cond_0

    .line 421
    const/4 v0, 0x0

    return v0

    .line 423
    :cond_0
    const/4 v0, 0x0

    .line 424
    .local v0, "pos":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 425
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_1

    .line 426
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_1

    .line 427
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_1

    .line 428
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 429
    invoke-static {p0, v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->isExponentNotation(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 430
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 435
    :cond_2
    return v0
.end method

.method private static isDigit(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 439
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isExponentNotation(Ljava/lang/String;I)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "index"    # I

    .line 443
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_3

    add-int/lit8 v0, p1, 0x1

    .line 445
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    add-int/lit8 v0, p1, 0x2

    .line 447
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_1

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_3

    :cond_1
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 443
    :goto_0
    return v0
.end method

.method public static parseAbsoluteFontSize(Ljava/lang/String;)F
    .locals 1
    .param p0, "fontSizeValue"    # Ljava/lang/String;

    .line 330
    const-string/jumbo v0, "px"

    invoke-static {p0, v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteFontSize(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static parseAbsoluteFontSize(Ljava/lang/String;Ljava/lang/String;)F
    .locals 2
    .param p0, "fontSizeValue"    # Ljava/lang/String;
    .param p1, "defaultMetric"    # Ljava/lang/String;

    .line 308
    if-eqz p0, :cond_0

    sget-object v0, Lcom/itextpdf/styledxmlparser/css/CommonCssConstants;->FONT_ABSOLUTE_SIZE_KEYWORDS_VALUES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/CommonCssConstants;->FONT_ABSOLUTE_SIZE_KEYWORDS_VALUES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p0, v0

    check-cast p0, Ljava/lang/String;

    .line 315
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "sxpe":Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;
    const/4 v1, 0x0

    return v1
.end method

.method public static parseAbsoluteLength(Ljava/lang/String;)F
    .locals 1
    .param p0, "length"    # Ljava/lang/String;

    .line 241
    const-string/jumbo v0, "px"

    invoke-static {p0, v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static parseAbsoluteLength(Ljava/lang/String;Ljava/lang/String;)F
    .locals 13
    .param p0, "length"    # Ljava/lang/String;
    .param p1, "defaultMetric"    # Ljava/lang/String;

    .line 181
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->determinePositionBetweenValueAndUnit(Ljava/lang/String;)I

    move-result v0

    .line 183
    .local v0, "pos":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 184
    if-nez p0, :cond_0

    .line 185
    const-string p0, "null"

    .line 187
    :cond_0
    new-instance v3, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    const-string v2, "The passed value (@{0}) is not a number"

    invoke-static {v2, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 191
    :cond_1
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 192
    .local v3, "f":D
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 195
    .local v5, "unit":Ljava/lang/String;
    const-string/jumbo v6, "pt"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_10

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_7

    .line 199
    :cond_2
    const-string v6, "in"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    const-wide/high16 v9, 0x4052000000000000L    # 72.0

    if-nez v8, :cond_f

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 200
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto/16 :goto_6

    .line 204
    :cond_3
    const-string v6, "cm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    const-wide v11, 0x400451eb851eb852L    # 2.54

    if-nez v8, :cond_e

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 205
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto/16 :goto_5

    .line 209
    :cond_4
    const-string/jumbo v6, "q"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 210
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto/16 :goto_4

    .line 214
    :cond_5
    const-string v6, "mm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 215
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_3

    .line 219
    :cond_6
    const-string v6, "pc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 220
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_2

    .line 224
    :cond_7
    const-string/jumbo v6, "px"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 225
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_1

    .line 229
    :cond_8
    sget-object v6, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->logger:Lorg/slf4j/Logger;

    new-array v1, v1, [Ljava/lang/Object;

    .line 230
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    move-object v7, p1

    goto :goto_0

    :cond_9
    move-object v7, v5

    :goto_0
    aput-object v7, v1, v2

    .line 229
    const-string v2, "Unknown absolute metric length parsed \"{0}\"."

    invoke-static {v2, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 231
    double-to-float v1, v3

    return v1

    .line 226
    :cond_a
    :goto_1
    const-wide/high16 v1, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v1, v3

    double-to-float v1, v1

    return v1

    .line 221
    :cond_b
    :goto_2
    const-wide/high16 v1, 0x4028000000000000L    # 12.0

    mul-double/2addr v1, v3

    double-to-float v1, v1

    return v1

    .line 216
    :cond_c
    :goto_3
    const-wide v1, 0x4039666666666666L    # 25.4

    div-double v1, v3, v1

    mul-double/2addr v1, v9

    double-to-float v1, v1

    return v1

    .line 211
    :cond_d
    :goto_4
    div-double v1, v3, v11

    mul-double/2addr v1, v9

    const-wide/high16 v6, 0x4044000000000000L    # 40.0

    div-double/2addr v1, v6

    double-to-float v1, v1

    return v1

    .line 206
    :cond_e
    :goto_5
    div-double v1, v3, v11

    mul-double/2addr v1, v9

    double-to-float v1, v1

    return v1

    .line 201
    :cond_f
    :goto_6
    mul-double/2addr v9, v3

    double-to-float v1, v9

    return v1

    .line 196
    :cond_10
    :goto_7
    double-to-float v1, v3

    return v1
.end method

.method public static parseAngle(Ljava/lang/String;)F
    .locals 1
    .param p0, "angle"    # Ljava/lang/String;

    .line 149
    const-string v0, "deg"

    invoke-static {p0, v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAngle(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static parseAngle(Ljava/lang/String;Ljava/lang/String;)F
    .locals 9
    .param p0, "angle"    # Ljava/lang/String;
    .param p1, "defaultMetric"    # Ljava/lang/String;

    .line 108
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->determinePositionBetweenValueAndUnit(Ljava/lang/String;)I

    move-result v0

    .line 110
    .local v0, "pos":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 111
    if-nez p0, :cond_0

    .line 112
    const-string p0, "null"

    .line 114
    :cond_0
    new-instance v3, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    const-string v2, "The passed value (@{0}) is not a number"

    invoke-static {v2, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 117
    :cond_1
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 118
    .local v3, "floatValue":F
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, "unit":Ljava/lang/String;
    const-string v5, "deg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const v7, 0x40490fdb    # (float)Math.PI

    if-nez v6, :cond_8

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 122
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_3

    .line 126
    :cond_2
    const-string v5, "grad"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 127
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    .line 131
    :cond_3
    const-string/jumbo v5, "rad"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 132
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    .line 136
    :cond_4
    sget-object v5, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->logger:Lorg/slf4j/Logger;

    new-array v1, v1, [Ljava/lang/Object;

    .line 137
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, p1

    goto :goto_0

    :cond_5
    move-object v6, v4

    :goto_0
    aput-object v6, v1, v2

    const-string v2, "Unknown metric angle parsed: \"{0}\"."

    invoke-static {v2, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-interface {v5, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 138
    return v3

    .line 133
    :cond_6
    :goto_1
    return v3

    .line 128
    :cond_7
    :goto_2
    mul-float/2addr v7, v3

    const/high16 v1, 0x43480000    # 200.0f

    div-float/2addr v7, v1

    return v7

    .line 123
    :cond_8
    :goto_3
    mul-float/2addr v7, v3

    const/high16 v1, 0x43340000    # 180.0f

    div-float/2addr v7, v1

    return v7
.end method

.method public static parseAspectRatio(Ljava/lang/String;)[I
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .line 159
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 161
    .local v0, "indexOfSlash":I
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 162
    .local v2, "first":I
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 163
    .local v3, "second":I
    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v2, v4, v1

    const/4 v1, 0x1

    aput v3, v4, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 164
    .end local v2    # "first":I
    .end local v3    # "second":I
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 165
    .local v1, "exc":Ljava/lang/RuntimeException;
    :goto_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public static parseDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 90
    return-object v0

    .line 93
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "exc":Ljava/lang/NumberFormatException;
    return-object v0
.end method

.method public static parseFloat(Ljava/lang/String;)Ljava/lang/Float;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 73
    return-object v0

    .line 76
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, "exc":Ljava/lang/NumberFormatException;
    return-object v0
.end method

.method public static parseInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 56
    return-object v0

    .line 59
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "exc":Ljava/lang/NumberFormatException;
    return-object v0
.end method

.method public static parseLengthValueToPt(Ljava/lang/String;FF)Lcom/itextpdf/layout/property/UnitValue;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "emValue"    # F
    .param p2, "remValue"    # F

    .line 284
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isMetricValue(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isNumericValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    if-eqz p0, :cond_1

    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    new-instance v0, Lcom/itextpdf/layout/property/UnitValue;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/layout/property/UnitValue;-><init>(IF)V

    return-object v0

    .line 288
    :cond_1
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isRemValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 289
    new-instance v0, Lcom/itextpdf/layout/property/UnitValue;

    invoke-static {p0, p2}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseRelativeValue(Ljava/lang/String;F)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/property/UnitValue;-><init>(IF)V

    return-object v0

    .line 290
    :cond_2
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isRelativeValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 291
    new-instance v0, Lcom/itextpdf/layout/property/UnitValue;

    invoke-static {p0, p1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseRelativeValue(Ljava/lang/String;F)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/property/UnitValue;-><init>(IF)V

    return-object v0

    .line 293
    :cond_3
    const/4 v0, 0x0

    return-object v0

    .line 285
    :cond_4
    :goto_0
    new-instance v0, Lcom/itextpdf/layout/property/UnitValue;

    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/property/UnitValue;-><init>(IF)V

    return-object v0
.end method

.method public static parseRelativeFontSize(Ljava/lang/String;F)F
    .locals 5
    .param p0, "relativeFontSizeValue"    # Ljava/lang/String;
    .param p1, "baseValue"    # F

    .line 341
    const-string/jumbo v0, "smaller"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide v1, 0x3ff3333333333333L    # 1.2

    if-eqz v0, :cond_0

    .line 342
    float-to-double v3, p1

    div-double/2addr v3, v1

    double-to-float v0, v3

    return v0

    .line 343
    :cond_0
    const-string v0, "larger"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    float-to-double v3, p1

    mul-double/2addr v3, v1

    double-to-float v0, v3

    return v0

    .line 346
    :cond_1
    invoke-static {p0, p1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseRelativeValue(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static parseRelativeValue(Ljava/lang/String;F)F
    .locals 8
    .param p0, "relativeValue"    # Ljava/lang/String;
    .param p1, "baseValue"    # F

    .line 253
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->determinePositionBetweenValueAndUnit(Ljava/lang/String;)I

    move-result v0

    .line 254
    .local v0, "pos":I
    if-nez v0, :cond_0

    .line 255
    const/4 v1, 0x0

    return v1

    .line 258
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 259
    .local v1, "f":D
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 260
    .local v3, "unit":Ljava/lang/String;
    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 261
    float-to-double v4, p1

    mul-double/2addr v4, v1

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double v1, v4, v6

    goto :goto_1

    .line 262
    :cond_1
    const-string v4, "em"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "rem"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 264
    :cond_2
    const-string v4, "ex"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 265
    float-to-double v4, p1

    mul-double/2addr v4, v1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v1, v4, v6

    goto :goto_1

    .line 263
    :cond_3
    :goto_0
    float-to-double v4, p1

    mul-double/2addr v1, v4

    .line 267
    :cond_4
    :goto_1
    double-to-float v4, v1

    return v4
.end method

.method public static parseResolution(Ljava/lang/String;)F
    .locals 6
    .param p0, "resolutionStr"    # Ljava/lang/String;

    .line 376
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->determinePositionBetweenValueAndUnit(Ljava/lang/String;)I

    move-result v0

    .line 377
    .local v0, "pos":I
    if-nez v0, :cond_0

    .line 378
    const/4 v1, 0x0

    return v1

    .line 380
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 381
    .local v1, "f":D
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 382
    .local v3, "unit":Ljava/lang/String;
    const-string v4, "dpcm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 383
    const-wide v4, 0x400451eb851eb852L    # 2.54

    mul-double/2addr v1, v4

    goto :goto_0

    .line 384
    :cond_1
    const-string v4, "dppx"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 385
    const-wide/high16 v4, 0x4058000000000000L    # 96.0

    mul-double/2addr v1, v4

    goto :goto_0

    .line 386
    :cond_2
    const-string v4, "dpi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 390
    :goto_0
    double-to-float v4, v1

    return v4

    .line 387
    :cond_3
    new-instance v4, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;

    const-string v5, "Resolution value unit should be either dpi, dppx or dpcm!"

    invoke-direct {v4, v5}, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static parseRgbaColor(Ljava/lang/String;)[F
    .locals 4
    .param p0, "colorValue"    # Ljava/lang/String;

    .line 400
    invoke-static {p0}, Lcom/itextpdf/kernel/colors/WebColors;->getRGBAColor(Ljava/lang/String;)[F

    move-result-object v0

    .line 401
    .local v0, "rgbaColor":[F
    if-nez v0, :cond_0

    .line 402
    sget-object v1, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->logger:Lorg/slf4j/Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string v3, "Color \"{0}\" was not parsed. It has invalid value. Defaulting to black color."

    invoke-static {v3, v2}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 403
    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    move-object v0, v1

    .line 405
    :cond_0
    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static parseSpecificCornerBorderRadius(Ljava/lang/String;FF)[Lcom/itextpdf/layout/property/UnitValue;
    .locals 6
    .param p0, "specificBorderRadius"    # Ljava/lang/String;
    .param p1, "emValue"    # F
    .param p2, "remValue"    # F

    .line 358
    if-nez p0, :cond_0

    .line 359
    const/4 v0, 0x0

    return-object v0

    .line 361
    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [Lcom/itextpdf/layout/property/UnitValue;

    .line 362
    .local v1, "cornerRadii":[Lcom/itextpdf/layout/property/UnitValue;
    const-string v2, "\\s+"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 363
    .local v2, "props":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-static {v4, p1, p2}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseLengthValueToPt(Ljava/lang/String;FF)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v4

    aput-object v4, v1, v3

    .line 364
    array-length v4, v2

    const/4 v5, 0x1

    if-ne v0, v4, :cond_1

    aget-object v0, v2, v5

    invoke-static {v0, p1, p2}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseLengthValueToPt(Ljava/lang/String;FF)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    goto :goto_0

    :cond_1
    aget-object v0, v1, v3

    :goto_0
    aput-object v0, v1, v5

    .line 366
    return-object v1
.end method
