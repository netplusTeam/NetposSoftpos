.class public Lcom/itextpdf/styledxmlparser/css/util/CssUtils;
.super Ljava/lang/Object;
.source "CssUtils.java"


# static fields
.field private static final EPSILON:F = 1.0E-6f

.field private static final FONT_RELATIVE_MEASUREMENTS_VALUES:[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final logger:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 69
    const-string v0, "em"

    const-string v1, "ex"

    const-string/jumbo v2, "rem"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->FONT_RELATIVE_MEASUREMENTS_VALUES:[Ljava/lang/String;

    .line 73
    const-class v0, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method private static addRange(Lcom/itextpdf/layout/font/RangeBuilder;Ljava/lang/String;)Z
    .locals 5
    .param p0, "builder"    # Lcom/itextpdf/layout/font/RangeBuilder;
    .param p1, "range"    # Ljava/lang/String;

    .line 787
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 788
    const-string v0, "[uU]\\+[0-9a-fA-F?]{1,6}(-[0-9a-fA-F]{1,6})?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 789
    const/4 v0, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 790
    .local v0, "parts":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x1

    if-ne v3, v2, :cond_1

    .line 791
    aget-object v2, v0, v1

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 792
    aget-object v2, v0, v1

    const/16 v3, 0x30

    const/16 v4, 0x3f

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    aget-object v1, v0, v1

    const/16 v3, 0x46

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v2, v1}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->addRange(Lcom/itextpdf/layout/font/RangeBuilder;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 794
    :cond_0
    aget-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-static {p0, v2, v1}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->addRange(Lcom/itextpdf/layout/font/RangeBuilder;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 797
    :cond_1
    aget-object v1, v0, v1

    aget-object v2, v0, v3

    invoke-static {p0, v1, v2}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->addRange(Lcom/itextpdf/layout/font/RangeBuilder;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 800
    .end local v0    # "parts":[Ljava/lang/String;
    :cond_2
    return v1
.end method

.method private static addRange(Lcom/itextpdf/layout/font/RangeBuilder;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "builder"    # Lcom/itextpdf/layout/font/RangeBuilder;
    .param p1, "left"    # Ljava/lang/String;
    .param p2, "right"    # Ljava/lang/String;

    .line 804
    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 805
    .local v1, "l":I
    invoke-static {p2, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 806
    .local v0, "r":I
    if-gt v1, v0, :cond_1

    const v2, 0x10ffff

    if-le v0, v2, :cond_0

    goto :goto_0

    .line 810
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/font/RangeBuilder;->addRange(II)Lcom/itextpdf/layout/font/RangeBuilder;

    .line 811
    const/4 v2, 0x1

    return v2

    .line 808
    :cond_1
    :goto_0
    const/4 v2, 0x0

    return v2
.end method

.method public static compareFloats(DD)Z
    .locals 4
    .param p0, "d1"    # D
    .param p2, "d2"    # D

    .line 678
    sub-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3eb0c6f7a0000000L    # 9.999999974752427E-7

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static compareFloats(FF)Z
    .locals 2
    .param p0, "f1"    # F
    .param p1, "f2"    # F

    .line 689
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x358637bd    # 1.0E-6f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static convertPtsToPx(D)D
    .locals 2
    .param p0, "pts"    # D

    .line 738
    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    div-double v0, p0, v0

    return-wide v0
.end method

.method public static convertPtsToPx(F)F
    .locals 1
    .param p0, "pts"    # F

    .line 728
    const/high16 v0, 0x3f400000    # 0.75f

    div-float v0, p0, v0

    return v0
.end method

.method public static convertPxToPts(D)D
    .locals 2
    .param p0, "px"    # D

    .line 758
    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method public static convertPxToPts(F)F
    .locals 1
    .param p0, "px"    # F

    .line 748
    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr v0, p0

    return v0
.end method

.method public static determinePositionBetweenValueAndUnit(Ljava/lang/String;)I
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 468
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->determinePositionBetweenValueAndUnit(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static extractShorthandProperties(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v1, "currentLayer":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;

    invoke-direct {v2, p0}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;-><init>(Ljava/lang/String;)V

    .line 189
    .local v2, "tokenizer":Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->getNextValidToken()Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;

    move-result-object v3

    .line 190
    .local v3, "currentToken":Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;
    :goto_0
    if-eqz v3, :cond_1

    .line 191
    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;->getType()Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;

    move-result-object v4

    sget-object v5, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;->COMMA:Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;

    if-ne v4, v5, :cond_0

    .line 192
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    goto :goto_1

    .line 195
    :cond_0
    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    :goto_1
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->getNextValidToken()Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;

    move-result-object v3

    goto :goto_0

    .line 199
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    return-object v0
.end method

.method public static extractUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .line 609
    const/4 v0, 0x0

    .line 610
    .local v0, "str":Ljava/lang/String;
    const-string/jumbo v1, "url"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 611
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "("

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 612
    .local v1, "urlString":Ljava/lang/String;
    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 613
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 614
    :cond_0
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 615
    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 617
    :cond_1
    move-object v0, v1

    .line 619
    .end local v1    # "urlString":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 621
    :cond_2
    move-object v0, p0

    .line 623
    :goto_1
    return-object v0
.end method

.method public static findNextUnescapedChar(Ljava/lang/String;CI)I
    .locals 4
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "ch"    # C
    .param p2, "startIndex"    # I

    .line 647
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 648
    .local v0, "symbolPos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 649
    return v1

    .line 651
    :cond_0
    move v1, v0

    .line 652
    .local v1, "afterNoneEscapePos":I
    :goto_0
    if-lez v1, :cond_1

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_1

    .line 653
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 655
    :cond_1
    sub-int v2, v0, v1

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v0, 0x1

    invoke-static {p0, p1, v2}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->findNextUnescapedChar(Ljava/lang/String;CI)I

    move-result v2

    :goto_1
    return v2
.end method

.method public static isAngleValue(Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 492
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isAngleValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isBase64Data(Ljava/lang/String;)Z
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 635
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isBase64Data(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isColorProperty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 667
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isColorProperty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isEmValue(Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 561
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isEmValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isExValue(Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 573
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isExValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFontRelativeValue(Ljava/lang/String;)Z
    .locals 7
    .param p0, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 516
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 517
    return v0

    .line 519
    :cond_0
    sget-object v1, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->FONT_RELATIVE_MEASUREMENTS_VALUES:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 520
    .local v4, "relativePostfix":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 521
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 520
    invoke-static {v5}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isNumericValue(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 522
    const/4 v0, 0x1

    return v0

    .line 519
    .end local v4    # "relativePostfix":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 525
    :cond_2
    return v0
.end method

.method public static isInitialOrInheritOrUnset(Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 783
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isInitialOrInheritOrUnset(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMetricValue(Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 480
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isMetricValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isNegativeValue(Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 599
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isNegativeValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isNumericValue(Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 586
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isNumericValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPercentageValue(Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 537
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isPercentageValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRelativeValue(Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 504
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isRelativeValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRemValue(Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 549
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isRemValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isStyleSheetLink(Lcom/itextpdf/styledxmlparser/node/IElementNode;)Z
    .locals 2
    .param p0, "headChildElement"    # Lcom/itextpdf/styledxmlparser/node/IElementNode;

    .line 768
    invoke-interface {p0}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "link"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    const-string/jumbo v0, "rel"

    invoke-interface {p0, v0}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "stylesheet"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 768
    :goto_0
    return v0
.end method

.method public static isValidNumericValue(Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 379
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isValidNumericValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static normalizeCssProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 211
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssPropertyNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static parseAbsoluteFontSize(Ljava/lang/String;)F
    .locals 1
    .param p0, "fontSizeValue"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 410
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteFontSize(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static parseAbsoluteFontSize(Ljava/lang/String;Ljava/lang/String;)F
    .locals 1
    .param p0, "fontSizeValue"    # Ljava/lang/String;
    .param p1, "defaultMetric"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 396
    invoke-static {p0, p1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteFontSize(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static parseAbsoluteLength(Ljava/lang/String;)F
    .locals 1
    .param p0, "length"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 335
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static parseAbsoluteLength(Ljava/lang/String;Ljava/lang/String;)F
    .locals 1
    .param p0, "length"    # Ljava/lang/String;
    .param p1, "defaultMetric"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 323
    invoke-static {p0, p1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static parseAngle(Ljava/lang/String;)F
    .locals 1
    .param p0, "angle"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 294
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAngle(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static parseAngle(Ljava/lang/String;Ljava/lang/String;)F
    .locals 1
    .param p0, "angle"    # Ljava/lang/String;
    .param p1, "defaultMetric"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 281
    invoke-static {p0, p1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAngle(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static parseAspectRatio(Ljava/lang/String;)[I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 306
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAspectRatio(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public static parseBlendMode(Ljava/lang/String;)Lcom/itextpdf/layout/property/BlendMode;
    .locals 2
    .param p0, "cssValue"    # Ljava/lang/String;

    .line 136
    if-nez p0, :cond_0

    .line 137
    sget-object v0, Lcom/itextpdf/layout/property/BlendMode;->NORMAL:Lcom/itextpdf/layout/property/BlendMode;

    return-object v0

    .line 140
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    goto/16 :goto_0

    :sswitch_0
    const-string v1, "difference"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "exclusion"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "color-burn"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x6

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "multiply"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "lighten"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "color"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "hue"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xb

    goto :goto_0

    :sswitch_7
    const-string v1, "color-dodge"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_8
    const-string/jumbo v1, "saturation"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xc

    goto :goto_0

    :sswitch_9
    const-string/jumbo v1, "screen"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_a
    const-string v1, "normal"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xf

    goto :goto_0

    :sswitch_b
    const-string v1, "overlay"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_c
    const-string/jumbo v1, "soft-light"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_d
    const-string v1, "darken"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_e
    const-string v1, "hard-light"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_f
    const-string v1, "luminosity"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xe

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 173
    sget-object v0, Lcom/itextpdf/layout/property/BlendMode;->NORMAL:Lcom/itextpdf/layout/property/BlendMode;

    return-object v0

    .line 170
    :pswitch_0
    sget-object v0, Lcom/itextpdf/layout/property/BlendMode;->LUMINOSITY:Lcom/itextpdf/layout/property/BlendMode;

    return-object v0

    .line 168
    :pswitch_1
    sget-object v0, Lcom/itextpdf/layout/property/BlendMode;->COLOR:Lcom/itextpdf/layout/property/BlendMode;

    return-object v0

    .line 166
    :pswitch_2
    sget-object v0, Lcom/itextpdf/layout/property/BlendMode;->SATURATION:Lcom/itextpdf/layout/property/BlendMode;

    return-object v0

    .line 164
    :pswitch_3
    sget-object v0, Lcom/itextpdf/layout/property/BlendMode;->HUE:Lcom/itextpdf/layout/property/BlendMode;

    return-object v0

    .line 162
    :pswitch_4
    sget-object v0, Lcom/itextpdf/layout/property/BlendMode;->EXCLUSION:Lcom/itextpdf/layout/property/BlendMode;

    return-object v0

    .line 160
    :pswitch_5
    sget-object v0, Lcom/itextpdf/layout/property/BlendMode;->DIFFERENCE:Lcom/itextpdf/layout/property/BlendMode;

    return-object v0

    .line 158
    :pswitch_6
    sget-object v0, Lcom/itextpdf/layout/property/BlendMode;->SOFT_LIGHT:Lcom/itextpdf/layout/property/BlendMode;

    return-object v0

    .line 156
    :pswitch_7
    sget-object v0, Lcom/itextpdf/layout/property/BlendMode;->HARD_LIGHT:Lcom/itextpdf/layout/property/BlendMode;

    return-object v0

    .line 154
    :pswitch_8
    sget-object v0, Lcom/itextpdf/layout/property/BlendMode;->COLOR_BURN:Lcom/itextpdf/layout/property/BlendMode;

    return-object v0

    .line 152
    :pswitch_9
    sget-object v0, Lcom/itextpdf/layout/property/BlendMode;->COLOR_DODGE:Lcom/itextpdf/layout/property/BlendMode;

    return-object v0

    .line 150
    :pswitch_a
    sget-object v0, Lcom/itextpdf/layout/property/BlendMode;->LIGHTEN:Lcom/itextpdf/layout/property/BlendMode;

    return-object v0

    .line 148
    :pswitch_b
    sget-object v0, Lcom/itextpdf/layout/property/BlendMode;->DARKEN:Lcom/itextpdf/layout/property/BlendMode;

    return-object v0

    .line 146
    :pswitch_c
    sget-object v0, Lcom/itextpdf/layout/property/BlendMode;->OVERLAY:Lcom/itextpdf/layout/property/BlendMode;

    return-object v0

    .line 144
    :pswitch_d
    sget-object v0, Lcom/itextpdf/layout/property/BlendMode;->SCREEN:Lcom/itextpdf/layout/property/BlendMode;

    return-object v0

    .line 142
    :pswitch_e
    sget-object v0, Lcom/itextpdf/layout/property/BlendMode;->MULTIPLY:Lcom/itextpdf/layout/property/BlendMode;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7e67fe3f -> :sswitch_f
        -0x5519924c -> :sswitch_e
        -0x4fcf0961 -> :sswitch_d
        -0x4a5e0a4d -> :sswitch_c
        -0x410bbbb0 -> :sswitch_b
        -0x3df94319 -> :sswitch_a
        -0x361a3f94 -> :sswitch_9
        -0xdbd042e -> :sswitch_8
        -0x72feb13 -> :sswitch_7
        0x194f8 -> :sswitch_6
        0x5a72f63 -> :sswitch_5
        0xa2a543f -> :sswitch_4
        0x26f8a624 -> :sswitch_3
        0x4a1669f9 -> :sswitch_2
        0x6487bdce -> :sswitch_1
        0x6704b53d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

.method public static parseDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 267
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public static parseFloat(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 255
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public static parseInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 243
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static parseLengthValueToPt(Ljava/lang/String;FF)Lcom/itextpdf/layout/property/UnitValue;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "emValue"    # F
    .param p2, "remValue"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 367
    invoke-static {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseLengthValueToPt(Ljava/lang/String;FF)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    return-object v0
.end method

.method public static parseRelativeFontSize(Ljava/lang/String;F)F
    .locals 1
    .param p0, "relativeFontSizeValue"    # Ljava/lang/String;
    .param p1, "baseValue"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 423
    invoke-static {p0, p1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseRelativeFontSize(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static parseRelativeValue(Ljava/lang/String;F)F
    .locals 1
    .param p0, "relativeValue"    # Ljava/lang/String;
    .param p1, "baseValue"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 349
    invoke-static {p0, p1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseRelativeValue(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static parseResolution(Ljava/lang/String;)F
    .locals 1
    .param p0, "resolutionStr"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 450
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseResolution(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static parseRgbaColor(Ljava/lang/String;)[F
    .locals 1
    .param p0, "colorValue"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 701
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseRgbaColor(Ljava/lang/String;)[F

    move-result-object v0

    return-object v0
.end method

.method public static parseSpecificCornerBorderRadius(Ljava/lang/String;FF)[Lcom/itextpdf/layout/property/UnitValue;
    .locals 1
    .param p0, "specificBorderRadius"    # Ljava/lang/String;
    .param p1, "emValue"    # F
    .param p2, "remValue"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 438
    invoke-static {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseSpecificCornerBorderRadius(Ljava/lang/String;FF)[Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    return-object v0
.end method

.method public static parseUnicodeRange(Ljava/lang/String;)Lcom/itextpdf/layout/font/Range;
    .locals 6
    .param p0, "unicodeRange"    # Ljava/lang/String;

    .line 711
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 712
    .local v0, "ranges":[Ljava/lang/String;
    new-instance v1, Lcom/itextpdf/layout/font/RangeBuilder;

    invoke-direct {v1}, Lcom/itextpdf/layout/font/RangeBuilder;-><init>()V

    .line 713
    .local v1, "builder":Lcom/itextpdf/layout/font/RangeBuilder;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 714
    .local v4, "range":Ljava/lang/String;
    invoke-static {v1, v4}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->addRange(Lcom/itextpdf/layout/font/RangeBuilder;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 715
    const/4 v2, 0x0

    return-object v2

    .line 713
    .end local v4    # "range":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 718
    :cond_1
    invoke-virtual {v1}, Lcom/itextpdf/layout/font/RangeBuilder;->create()Lcom/itextpdf/layout/font/Range;

    move-result-object v2

    return-object v2
.end method

.method public static removeDoubleSpacesAndTrim(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .line 221
    const-string v0, "\\s"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "parts":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 224
    .local v4, "part":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 225
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 226
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .end local v4    # "part":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 231
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static varargs splitString(Ljava/lang/String;C[Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;)Ljava/util/List;
    .locals 10
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "splitChar"    # C
    .param p2, "escapeCharacters"    # [Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "C[",
            "Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 101
    if-nez p0, :cond_0

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 104
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v0, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 106
    .local v1, "lastSplitChar":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 107
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 108
    .local v3, "currentChar":C
    const/4 v4, 0x0

    .line 109
    .local v4, "isEscaped":Z
    array-length v5, p2

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v5, :cond_4

    aget-object v8, p2, v7

    .line 110
    .local v8, "character":Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;
    if-ne v3, p1, :cond_3

    .line 111
    if-nez v4, :cond_2

    invoke-virtual {v8}, Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;->isEscaped()Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_2

    :cond_1
    move v9, v6

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v9, 0x1

    :goto_3
    move v4, v9

    goto :goto_4

    .line 113
    :cond_3
    invoke-virtual {v8, v3}, Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;->processCharacter(C)V

    .line 109
    .end local v8    # "character":Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 116
    :cond_4
    if-ne v3, p1, :cond_5

    if-nez v4, :cond_5

    .line 117
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    add-int/lit8 v1, v2, 0x1

    .line 106
    .end local v3    # "currentChar":C
    .end local v4    # "isEscaped":Z
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    .end local v2    # "i":I
    :cond_6
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "lastToken":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 123
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_7
    return-object v0
.end method

.method public static splitStringWithComma(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
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

    .line 89
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;

    new-instance v1, Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;

    const/16 v2, 0x28

    const/16 v3, 0x29

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;-><init>(CC)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x2c

    invoke-static {p0, v1, v0}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->splitString(Ljava/lang/String;C[Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
