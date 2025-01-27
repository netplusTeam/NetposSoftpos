.class public final Lcom/itextpdf/styledxmlparser/css/media/MediaQueryParser;
.super Ljava/lang/Object;
.source "MediaQueryParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method private static parseMediaExpression(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;
    .locals 4
    .param p0, "mediaExpressionStr"    # Ljava/lang/String;

    .line 147
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 148
    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 151
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 152
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 153
    return-object v1

    .line 155
    :cond_1
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 157
    .local v0, "colonPos":I
    const/4 v1, 0x0

    .line 158
    .local v1, "value":Ljava/lang/String;
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 159
    move-object v2, p0

    .local v2, "mediaFeature":Ljava/lang/String;
    goto :goto_0

    .line 161
    .end local v2    # "mediaFeature":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 162
    .restart local v2    # "mediaFeature":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 164
    :goto_0
    new-instance v3, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;

    invoke-direct {v3, v2, v1}, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 149
    .end local v0    # "colonPos":I
    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "mediaFeature":Ljava/lang/String;
    :cond_3
    :goto_1
    return-object v1
.end method

.method private static parseMediaExpressions(Ljava/lang/String;Z)Ljava/util/List;
    .locals 8
    .param p0, "mediaExpressionsStr"    # Ljava/lang/String;
    .param p1, "shallStartWithAnd"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;",
            ">;"
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 120
    const-string v0, "and"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 122
    .local v1, "startsWithEnd":Z
    const/4 v2, 0x1

    .line 123
    .local v2, "firstExpression":Z
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "mediaExpressionStrs":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v3, "expressions":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;>;"
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v0, v5

    .line 126
    .local v6, "mediaExpressionStr":Ljava/lang/String;
    invoke-static {v6}, Lcom/itextpdf/styledxmlparser/css/media/MediaQueryParser;->parseMediaExpression(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;

    move-result-object v7

    .line 127
    .local v7, "expression":Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;
    if-eqz v7, :cond_2

    .line 128
    if-eqz v2, :cond_1

    .line 129
    if-eqz p1, :cond_1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 130
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Expected \'and\' while parsing media expression"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 133
    :cond_1
    :goto_1
    const/4 v2, 0x0

    .line 134
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    .end local v6    # "mediaExpressionStr":Ljava/lang/String;
    .end local v7    # "expression":Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 137
    :cond_3
    return-object v3
.end method

.method static parseMediaQueries(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "mediaQueriesStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;",
            ">;"
        }
    .end annotation

    .line 66
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "mediaQueryStrs":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v1, "mediaQueries":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 69
    .local v4, "mediaQueryStr":Ljava/lang/String;
    invoke-static {v4}, Lcom/itextpdf/styledxmlparser/css/media/MediaQueryParser;->parseMediaQuery(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;

    move-result-object v5

    .line 70
    .local v5, "mediaQuery":Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;
    if-eqz v5, :cond_0

    .line 71
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .end local v4    # "mediaQueryStr":Ljava/lang/String;
    .end local v5    # "mediaQuery":Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    :cond_1
    return-object v1
.end method

.method static parseMediaQuery(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;
    .locals 8
    .param p0, "mediaQueryStr"    # Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "only":Z
    const/4 v1, 0x0

    .line 87
    .local v1, "not":Z
    const-string v2, "only"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    const/4 v0, 0x1

    .line 89
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 90
    :cond_0
    const-string v2, "not"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 91
    const/4 v1, 0x1

    .line 92
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 95
    :cond_1
    :goto_0
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 96
    .local v2, "indexOfSpace":I
    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, p0

    .line 98
    .local v3, "firstWord":Ljava/lang/String;
    :goto_1
    const/4 v5, 0x0

    .line 99
    .local v5, "mediaType":Ljava/lang/String;
    const/4 v6, 0x0

    .line 101
    .local v6, "mediaExpressions":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;>;"
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    invoke-static {v3}, Lcom/itextpdf/styledxmlparser/css/media/MediaType;->isValidMediaType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    .line 105
    :cond_3
    invoke-static {p0, v4}, Lcom/itextpdf/styledxmlparser/css/media/MediaQueryParser;->parseMediaExpressions(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v4

    .end local v6    # "mediaExpressions":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;>;"
    .local v4, "mediaExpressions":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;>;"
    goto :goto_3

    .line 102
    .end local v4    # "mediaExpressions":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;>;"
    .restart local v6    # "mediaExpressions":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;>;"
    :cond_4
    :goto_2
    move-object v5, v3

    .line 103
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    invoke-static {v4, v7}, Lcom/itextpdf/styledxmlparser/css/media/MediaQueryParser;->parseMediaExpressions(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v4

    .line 108
    .end local v6    # "mediaExpressions":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;>;"
    .restart local v4    # "mediaExpressions":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;>;"
    :goto_3
    new-instance v6, Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;

    invoke-direct {v6, v5, v4, v0, v1}, Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;-><init>(Ljava/lang/String;Ljava/util/List;ZZ)V

    return-object v6
.end method
