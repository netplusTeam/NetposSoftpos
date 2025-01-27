.class public Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FontShorthandResolver;
.super Ljava/lang/Object;
.source "FontShorthandResolver.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/IShorthandResolver;


# static fields
.field private static final FONT_SIZE_VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FONT_WEIGHT_NOT_DEFAULT_VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNSUPPORTED_VALUES_OF_FONT_SHORTHAND:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 68
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "caption"

    const-string v2, "icon"

    const-string v3, "menu"

    const-string v4, "message-box"

    const-string/jumbo v5, "small-caption"

    const-string/jumbo v6, "status-bar"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FontShorthandResolver;->UNSUPPORTED_VALUES_OF_FONT_SHORTHAND:Ljava/util/Set;

    .line 79
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "bold"

    const-string v2, "bolder"

    const-string v3, "lighter"

    const-string v4, "100"

    const-string v5, "200"

    const-string v6, "300"

    const-string v7, "400"

    const-string v8, "500"

    const-string v9, "600"

    const-string v10, "700"

    const-string v11, "800"

    const-string v12, "900"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FontShorthandResolver;->FONT_WEIGHT_NOT_DEFAULT_VALUES:Ljava/util/Set;

    .line 88
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "medium"

    const-string/jumbo v2, "xx-small"

    const-string/jumbo v3, "x-small"

    const-string/jumbo v4, "small"

    const-string v5, "large"

    const-string/jumbo v6, "x-large"

    const-string/jumbo v7, "xx-large"

    const-string/jumbo v8, "smaller"

    const-string v9, "larger"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FontShorthandResolver;->FONT_SIZE_VALUES:Ljava/util/Set;

    .line 88
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getFontProperties(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "shorthandExpression"    # Ljava/lang/String;
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

    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, "doubleQuotesAreSpotted":Z
    const/4 v1, 0x0

    .line 169
    .local v1, "singleQuoteIsSpotted":Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v2, "properties":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 172
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 173
    .local v5, "currentChar":C
    const/16 v6, 0x22

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v5, v6, :cond_1

    .line 174
    if-nez v0, :cond_0

    move v7, v8

    :cond_0
    move v0, v7

    .line 175
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 176
    :cond_1
    const/16 v6, 0x27

    if-ne v5, v6, :cond_3

    .line 177
    if-nez v1, :cond_2

    move v7, v8

    :cond_2
    move v1, v7

    .line 178
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 179
    :cond_3
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 180
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 181
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v6

    goto :goto_1

    .line 185
    :cond_4
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    .end local v5    # "currentChar":C
    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 188
    .end local v4    # "i":I
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_7

    .line 189
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_7
    return-object v2
.end method


# virtual methods
.method public resolveShorthand(Ljava/lang/String;)Ljava/util/List;
    .locals 23
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

    .line 106
    move-object/from16 v0, p1

    sget-object v1, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FontShorthandResolver;->UNSUPPORTED_VALUES_OF_FONT_SHORTHAND:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 107
    const-class v1, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FontShorthandResolver;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 108
    .local v1, "logger":Lorg/slf4j/Logger;
    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, v2

    const-string v5, "The \"{0}\" value of CSS shorthand property \"font\" is not supported"

    invoke-static {v5, v4}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 110
    .end local v1    # "logger":Lorg/slf4j/Logger;
    :cond_0
    const-string v1, "initial"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "font-family"

    const-string v7, "line-height"

    const-string v9, "font-size"

    const-string v11, "font-weight"

    const-string v13, "font-variant"

    const-string v14, "font-style"

    if-nez v4, :cond_10

    const-string v4, "inherit"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v8, p0

    goto/16 :goto_a

    .line 121
    :cond_1
    const/4 v4, 0x0

    .line 122
    .local v4, "fontStyleValue":Ljava/lang/String;
    const/16 v16, 0x0

    .line 123
    .local v16, "fontVariantValue":Ljava/lang/String;
    const/16 v17, 0x0

    .line 124
    .local v17, "fontWeightValue":Ljava/lang/String;
    const/16 v18, 0x0

    .line 125
    .local v18, "fontSizeValue":Ljava/lang/String;
    const/16 v19, 0x0

    .line 126
    .local v19, "lineHeightValue":Ljava/lang/String;
    const/16 v20, 0x0

    .line 128
    .local v20, "fontFamilyValue":Ljava/lang/String;
    const-string v6, "\\s*,\\s*"

    const-string v8, ","

    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v8, p0

    invoke-direct {v8, v6}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FontShorthandResolver;->getFontProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 129
    .local v6, "properties":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v10, v22

    check-cast v10, Ljava/lang/String;

    .line 130
    .local v10, "value":Ljava/lang/String;
    const/16 v12, 0x2f

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 131
    .local v12, "slashSymbolIndex":I
    const-string v3, "italic"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "oblique"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 133
    :cond_2
    const-string/jumbo v3, "small-caps"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 134
    move-object v3, v10

    move-object/from16 v16, v3

    .end local v16    # "fontVariantValue":Ljava/lang/String;
    .local v3, "fontVariantValue":Ljava/lang/String;
    goto :goto_3

    .line 135
    .end local v3    # "fontVariantValue":Ljava/lang/String;
    .restart local v16    # "fontVariantValue":Ljava/lang/String;
    :cond_3
    sget-object v3, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FontShorthandResolver;->FONT_WEIGHT_NOT_DEFAULT_VALUES:Ljava/util/Set;

    invoke-interface {v3, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 136
    move-object v3, v10

    move-object/from16 v17, v3

    .end local v17    # "fontWeightValue":Ljava/lang/String;
    .local v3, "fontWeightValue":Ljava/lang/String;
    goto :goto_3

    .line 137
    .end local v3    # "fontWeightValue":Ljava/lang/String;
    .restart local v17    # "fontWeightValue":Ljava/lang/String;
    :cond_4
    if-lez v12, :cond_5

    .line 138
    invoke-virtual {v10, v2, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 139
    .end local v18    # "fontSizeValue":Ljava/lang/String;
    .local v3, "fontSizeValue":Ljava/lang/String;
    add-int/lit8 v2, v12, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v10, v2, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v19, v2

    move-object/from16 v18, v3

    .end local v19    # "lineHeightValue":Ljava/lang/String;
    .local v2, "lineHeightValue":Ljava/lang/String;
    goto :goto_3

    .line 140
    .end local v2    # "lineHeightValue":Ljava/lang/String;
    .end local v3    # "fontSizeValue":Ljava/lang/String;
    .restart local v18    # "fontSizeValue":Ljava/lang/String;
    .restart local v19    # "lineHeightValue":Ljava/lang/String;
    :cond_5
    sget-object v2, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FontShorthandResolver;->FONT_SIZE_VALUES:Ljava/util/Set;

    invoke-interface {v2, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v10}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isMetricValue(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 141
    invoke-static {v10}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isNumericValue(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v10}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isRelativeValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1

    .line 144
    :cond_6
    move-object v2, v10

    move-object/from16 v20, v2

    .end local v20    # "fontFamilyValue":Ljava/lang/String;
    .local v2, "fontFamilyValue":Ljava/lang/String;
    goto :goto_3

    .line 142
    .end local v2    # "fontFamilyValue":Ljava/lang/String;
    .restart local v20    # "fontFamilyValue":Ljava/lang/String;
    :cond_7
    :goto_1
    move-object v2, v10

    move-object/from16 v18, v2

    .end local v18    # "fontSizeValue":Ljava/lang/String;
    .local v2, "fontSizeValue":Ljava/lang/String;
    goto :goto_3

    .line 132
    .end local v2    # "fontSizeValue":Ljava/lang/String;
    .restart local v18    # "fontSizeValue":Ljava/lang/String;
    :cond_8
    :goto_2
    move-object v2, v10

    move-object v4, v2

    .line 146
    .end local v10    # "value":Ljava/lang/String;
    .end local v12    # "slashSymbolIndex":I
    :goto_3
    const/4 v2, 0x0

    const/4 v3, 0x1

    goto :goto_0

    .line 148
    :cond_9
    const/4 v2, 0x6

    new-array v2, v2, [Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    new-instance v3, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    if-nez v4, :cond_a

    move-object v10, v1

    goto :goto_4

    :cond_a
    move-object v10, v4

    :goto_4
    invoke-direct {v3, v14, v10}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    aput-object v3, v2, v10

    new-instance v3, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    if-nez v16, :cond_b

    move-object v10, v1

    goto :goto_5

    :cond_b
    move-object/from16 v10, v16

    :goto_5
    invoke-direct {v3, v13, v10}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x1

    aput-object v3, v2, v10

    new-instance v3, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    if-nez v17, :cond_c

    move-object v10, v1

    goto :goto_6

    :cond_c
    move-object/from16 v10, v17

    :goto_6
    invoke-direct {v3, v11, v10}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x2

    aput-object v3, v2, v10

    new-instance v3, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    if-nez v18, :cond_d

    move-object v10, v1

    goto :goto_7

    :cond_d
    move-object/from16 v10, v18

    :goto_7
    invoke-direct {v3, v9, v10}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x3

    aput-object v3, v2, v9

    new-instance v3, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    if-nez v19, :cond_e

    move-object v9, v1

    goto :goto_8

    :cond_e
    move-object/from16 v9, v19

    :goto_8
    invoke-direct {v3, v7, v9}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x4

    aput-object v3, v2, v7

    new-instance v3, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    if-nez v20, :cond_f

    goto :goto_9

    :cond_f
    move-object/from16 v1, v20

    :goto_9
    invoke-direct {v3, v5, v1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    aput-object v3, v2, v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 157
    .local v1, "cssDeclarations":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    return-object v1

    .line 110
    .end local v1    # "cssDeclarations":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    .end local v4    # "fontStyleValue":Ljava/lang/String;
    .end local v6    # "properties":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "fontVariantValue":Ljava/lang/String;
    .end local v17    # "fontWeightValue":Ljava/lang/String;
    .end local v18    # "fontSizeValue":Ljava/lang/String;
    .end local v19    # "lineHeightValue":Ljava/lang/String;
    .end local v20    # "fontFamilyValue":Ljava/lang/String;
    :cond_10
    move-object/from16 v8, p0

    .line 111
    :goto_a
    const/4 v1, 0x6

    new-array v1, v1, [Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    new-instance v2, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v2, v14, v0}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v2, v13, v0}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v2, v11, v0}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v2, v9, v0}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v2, v7, v0}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v2, v5, v0}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
