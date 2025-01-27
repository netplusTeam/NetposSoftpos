.class public final Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;
.super Ljava/lang/Object;
.source "CssTypesValidationUtils.java"


# static fields
.field private static final ANGLE_MEASUREMENTS_VALUES:[Ljava/lang/String;

.field private static final RELATIVE_MEASUREMENTS_VALUES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 34
    const-string v0, "deg"

    const-string v1, "grad"

    const-string/jumbo v2, "rad"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->ANGLE_MEASUREMENTS_VALUES:[Ljava/lang/String;

    .line 39
    const-string v0, "%"

    const-string v1, "em"

    const-string v2, "ex"

    const-string/jumbo v3, "rem"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->RELATIVE_MEASUREMENTS_VALUES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static containsInitialOrInheritOrUnset(Ljava/lang/String;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 266
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 267
    return v0

    .line 269
    :cond_0
    const-string v1, "initial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 270
    const-string v1, "inherit"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 271
    const-string/jumbo v1, "unset"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 269
    :cond_2
    return v0
.end method

.method public static isAngleValue(Ljava/lang/String;)Z
    .locals 8
    .param p0, "valueArgument"    # Ljava/lang/String;

    .line 56
    move-object v0, p0

    .line 57
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 58
    return v1

    .line 60
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 62
    sget-object v2, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->ANGLE_MEASUREMENTS_VALUES:[Ljava/lang/String;

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 63
    .local v5, "metricPostfix":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 63
    invoke-static {v6}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isNumericValue(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 65
    const/4 v1, 0x1

    return v1

    .line 62
    .end local v5    # "metricPostfix":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 68
    :cond_2
    return v1
.end method

.method public static isBase64Data(Ljava/lang/String;)Z
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 78
    const-string v0, "^data:([^\\s]*);base64,([^\\s]*)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isColorProperty(Ljava/lang/String;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 88
    const-string/jumbo v0, "rgb("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "rgba("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/itextpdf/kernel/colors/WebColors;->NAMES:Lcom/itextpdf/kernel/colors/WebColors;

    .line 89
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/colors/WebColors;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "transparent"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 88
    :goto_1
    return v0
.end method

.method public static isEmValue(Ljava/lang/String;)Z
    .locals 4
    .param p0, "valueArgument"    # Ljava/lang/String;

    .line 99
    move-object v0, p0

    .line 100
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 101
    return v1

    .line 103
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 105
    const-string v2, "em"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 106
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isNumericValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isExValue(Ljava/lang/String;)Z
    .locals 4
    .param p0, "valueArgument"    # Ljava/lang/String;

    .line 116
    move-object v0, p0

    .line 117
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 118
    return v1

    .line 120
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_1

    const-string v2, "ex"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isNumericValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isInitialOrInheritOrUnset(Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 254
    const-string v0, "initial"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 255
    const-string v0, "inherit"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 256
    const-string/jumbo v0, "unset"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 254
    :goto_1
    return v0
.end method

.method public static isMetricValue(Ljava/lang/String;)Z
    .locals 8
    .param p0, "valueArgument"    # Ljava/lang/String;

    .line 133
    move-object v0, p0

    .line 134
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 135
    return v1

    .line 137
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 139
    sget-object v2, Lcom/itextpdf/styledxmlparser/css/CommonCssConstants;->METRIC_MEASUREMENTS_VALUES:[Ljava/lang/String;

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 140
    .local v5, "metricPostfix":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 141
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 140
    invoke-static {v6}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isNumericValue(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 142
    const/4 v1, 0x1

    return v1

    .line 139
    .end local v5    # "metricPostfix":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 145
    :cond_2
    return v1
.end method

.method static isMetricZeroValue(Ljava/lang/String;)Z
    .locals 8
    .param p0, "valueArgument"    # Ljava/lang/String;

    .line 285
    move-object v0, p0

    .line 286
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 287
    return v1

    .line 289
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 291
    sget-object v2, Lcom/itextpdf/styledxmlparser/css/CommonCssConstants;->METRIC_MEASUREMENTS_VALUES:[Ljava/lang/String;

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 292
    .local v5, "metricPostfix":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 293
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 292
    invoke-static {v6}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isNumericZeroValue(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 294
    const/4 v1, 0x1

    return v1

    .line 291
    .end local v5    # "metricPostfix":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 297
    :cond_2
    return v1
.end method

.method public static isNegativeValue(Ljava/lang/String;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 156
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 157
    return v0

    .line 159
    :cond_0
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isNumericValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isRelativeValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isMetricValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 162
    :cond_1
    return v0

    .line 160
    :cond_2
    :goto_0
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isNumericValue(Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 173
    if-eqz p0, :cond_1

    const-string v0, "^[-+]?\\d\\d*\\.\\d*$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    const-string v0, "^[-+]?\\d\\d*$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    const-string v0, "^[-+]?\\.\\d\\d*$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 173
    :goto_0
    return v0
.end method

.method static isNumericZeroValue(Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 301
    if-eqz p0, :cond_1

    const-string v0, "^[-+]?0$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    const-string v0, "^[-+]?\\.0$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 301
    :goto_0
    return v0
.end method

.method public static isPercentageValue(Ljava/lang/String;)Z
    .locals 4
    .param p0, "valueArgument"    # Ljava/lang/String;

    .line 185
    move-object v0, p0

    .line 186
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 187
    return v1

    .line 189
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 191
    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 192
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 191
    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isNumericValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isRelativeValue(Ljava/lang/String;)Z
    .locals 8
    .param p0, "valueArgument"    # Ljava/lang/String;

    .line 202
    move-object v0, p0

    .line 203
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 204
    return v1

    .line 206
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 208
    sget-object v2, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->RELATIVE_MEASUREMENTS_VALUES:[Ljava/lang/String;

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 209
    .local v5, "relativePostfix":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 210
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 209
    invoke-static {v6}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isNumericValue(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 211
    const/4 v1, 0x1

    return v1

    .line 208
    .end local v5    # "relativePostfix":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 214
    :cond_2
    return v1
.end method

.method static isRelativeZeroValue(Ljava/lang/String;)Z
    .locals 8
    .param p0, "valueArgument"    # Ljava/lang/String;

    .line 306
    move-object v0, p0

    .line 307
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 308
    return v1

    .line 310
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 312
    sget-object v2, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->RELATIVE_MEASUREMENTS_VALUES:[Ljava/lang/String;

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 313
    .local v5, "relativePostfix":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 314
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 313
    invoke-static {v6}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isNumericZeroValue(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 315
    const/4 v1, 0x1

    return v1

    .line 312
    .end local v5    # "relativePostfix":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 318
    :cond_2
    return v1
.end method

.method public static isRemValue(Ljava/lang/String;)Z
    .locals 4
    .param p0, "valueArgument"    # Ljava/lang/String;

    .line 224
    move-object v0, p0

    .line 225
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 226
    return v1

    .line 228
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_1

    const-string/jumbo v2, "rem"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 231
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 230
    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isNumericValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isValidNumericValue(Ljava/lang/String;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 241
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isRelativeValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isMetricValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isNumericValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0

    .line 242
    :cond_3
    :goto_0
    return v0
.end method

.method public static isZero(Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 281
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isNumericZeroValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isMetricZeroValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isRelativeZeroValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
