.class public abstract Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/AbstractBorderShorthandResolver;
.super Ljava/lang/Object;
.source "AbstractBorderShorthandResolver.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/IShorthandResolver;


# static fields
.field private static final _0_COLOR:Ljava/lang/String; = "{0}-color"

.field private static final _0_STYLE:Ljava/lang/String; = "{0}-style"

.field private static final _0_WIDTH:Ljava/lang/String; = "{0}-width"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getPrefix()Ljava/lang/String;
.end method

.method public resolveShorthand(Ljava/lang/String;)Ljava/util/List;
    .locals 16
    .param p1, "shorthandExpression"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;"
        }
    .end annotation

    .line 86
    move-object/from16 v0, p1

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/AbstractBorderShorthandResolver;->getPrefix()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "{0}-width"

    invoke-static {v3, v2}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "widthPropName":Ljava/lang/String;
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/AbstractBorderShorthandResolver;->getPrefix()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string/jumbo v5, "{0}-style"

    invoke-static {v5, v3}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "stylePropName":Ljava/lang/String;
    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/AbstractBorderShorthandResolver;->getPrefix()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    const-string/jumbo v6, "{0}-color"

    invoke-static {v6, v5}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 90
    .local v5, "colorPropName":Ljava/lang/String;
    const-string v6, "initial"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    const-string v7, "inherit"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto/16 :goto_8

    .line 97
    :cond_0
    const-string v8, "\\s+"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 99
    .local v8, "props":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 100
    .local v9, "borderColorValue":Ljava/lang/String;
    const/4 v10, 0x0

    .line 101
    .local v10, "borderStyleValue":Ljava/lang/String;
    const/4 v11, 0x0

    .line 103
    .local v11, "borderWidthValue":Ljava/lang/String;
    array-length v12, v8

    move v13, v4

    :goto_0
    if-ge v13, v12, :cond_8

    aget-object v14, v8, v13

    .line 104
    .local v14, "value":Ljava/lang/String;
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    goto :goto_4

    .line 109
    :cond_1
    sget-object v15, Lcom/itextpdf/styledxmlparser/css/CommonCssConstants;->BORDER_WIDTH_VALUES:Ljava/util/Set;

    invoke-interface {v15, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    invoke-static {v14}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isNumericValue(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 110
    invoke-static {v14}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isMetricValue(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_5

    invoke-static {v14}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isRelativeValue(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    goto :goto_2

    .line 112
    :cond_2
    sget-object v15, Lcom/itextpdf/styledxmlparser/css/CommonCssConstants;->BORDER_STYLE_VALUES:Ljava/util/Set;

    invoke-interface {v15, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    const-string v15, "auto"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    goto :goto_1

    .line 114
    :cond_3
    invoke-static {v14}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isColorProperty(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 115
    move-object v9, v14

    goto :goto_3

    .line 113
    :cond_4
    :goto_1
    move-object v10, v14

    goto :goto_3

    .line 111
    :cond_5
    :goto_2
    move-object v11, v14

    .line 103
    .end local v14    # "value":Ljava/lang/String;
    :cond_6
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 105
    .restart local v14    # "value":Ljava/lang/String;
    :cond_7
    :goto_4
    const-class v6, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/AbstractBorderShorthandResolver;

    invoke-static {v6}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v6

    .line 106
    .local v6, "logger":Lorg/slf4j/Logger;
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    const-string v4, "Invalid css property declaration: {0}"

    invoke-static {v4, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 107
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 119
    .end local v6    # "logger":Lorg/slf4j/Logger;
    .end local v14    # "value":Ljava/lang/String;
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v1, "resolvedDecl":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    new-instance v4, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    if-nez v11, :cond_9

    move-object v7, v6

    goto :goto_5

    :cond_9
    move-object v7, v11

    :goto_5
    invoke-direct {v4, v2, v7}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v4, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    if-nez v10, :cond_a

    move-object v7, v6

    goto :goto_6

    :cond_a
    move-object v7, v10

    :goto_6
    invoke-direct {v4, v3, v7}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v4, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    if-nez v9, :cond_b

    goto :goto_7

    :cond_b
    move-object v6, v9

    :goto_7
    invoke-direct {v4, v5, v6}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    return-object v1

    .line 91
    .end local v1    # "resolvedDecl":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    .end local v8    # "props":[Ljava/lang/String;
    .end local v9    # "borderColorValue":Ljava/lang/String;
    .end local v10    # "borderStyleValue":Ljava/lang/String;
    .end local v11    # "borderWidthValue":Ljava/lang/String;
    :cond_c
    :goto_8
    const/4 v6, 0x3

    new-array v6, v6, [Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    new-instance v7, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v7, v2, v0}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v6, v4

    new-instance v4, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v4, v3, v0}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v6, v1

    const/4 v1, 0x2

    new-instance v4, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v4, v5, v0}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v6, v1

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
