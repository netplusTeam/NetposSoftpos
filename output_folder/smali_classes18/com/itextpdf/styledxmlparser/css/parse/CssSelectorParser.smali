.class public final Lcom/itextpdf/styledxmlparser/css/parse/CssSelectorParser;
.super Ljava/lang/Object;
.source "CssSelectorParser.java"


# static fields
.field private static final LEGACY_PSEUDO_ELEMENTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SELECTOR_PATTERN_STR:Ljava/lang/String; = "(\\*)|([_a-zA-Z][\\w-]*)|(\\.[_a-zA-Z][\\w-]*)|(#[_a-z][\\w-]*)|(\\[[_a-zA-Z][\\w-]*(([~^$*|])?=((\"[^\"]+\")|([^\"]+)|(\'[^\']+\')|(\"\")|(\'\')))?\\])|(::?[a-zA-Z-]*)|( )|(\\+)|(>)|(~)"

.field private static final selectorPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 77
    .local v0, "tempSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v1, "first-line"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 78
    const-string v1, "first-letter"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    const-string v1, "before"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 80
    const-string v1, "after"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/itextpdf/styledxmlparser/css/parse/CssSelectorParser;->LEGACY_PSEUDO_ELEMENTS:Ljava/util/Set;

    .line 93
    .end local v0    # "tempSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v0, "(\\*)|([_a-zA-Z][\\w-]*)|(\\.[_a-zA-Z][\\w-]*)|(#[_a-z][\\w-]*)|(\\[[_a-zA-Z][\\w-]*(([~^$*|])?=((\"[^\"]+\")|([^\"]+)|(\'[^\']+\')|(\"\")|(\'\')))?\\])|(::?[a-zA-Z-]*)|( )|(\\+)|(>)|(~)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/parse/CssSelectorParser;->selectorPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    return-void
.end method

.method private static appendPseudoSelector(Ljava/util/List;Ljava/lang/String;Ljava/util/regex/Matcher;Ljava/lang/String;)V
    .locals 4
    .param p1, "pseudoSelector"    # Ljava/lang/String;
    .param p2, "match"    # Ljava/util/regex/Matcher;
    .param p3, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/regex/Matcher;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 176
    .local p0, "selectorItems":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;>;"
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 177
    invoke-static {p1, p2, p3}, Lcom/itextpdf/styledxmlparser/css/parse/CssSelectorParser;->handleBracketsOfPseudoSelector(Ljava/lang/String;Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 186
    const-string v0, "::"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoElementSelectorItem;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoElementSelectorItem;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 188
    :cond_0
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/itextpdf/styledxmlparser/css/parse/CssSelectorParser;->LEGACY_PSEUDO_ELEMENTS:Ljava/util/Set;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoElementSelectorItem;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoElementSelectorItem;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassSelectorItem;->create(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassSelectorItem;

    move-result-object v0

    .line 192
    .local v0, "pseudoClassSelectorItem":Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;
    if-eqz v0, :cond_2

    .line 195
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    .end local v0    # "pseudoClassSelectorItem":Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;
    :goto_0
    return-void

    .line 193
    .restart local v0    # "pseudoClassSelectorItem":Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    const-string v3, "Unsupported pseudo css selector: {0}"

    invoke-static {v3, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static handleBracketsOfPseudoSelector(Ljava/lang/String;Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "pseudoSelector"    # Ljava/lang/String;
    .param p1, "match"    # Ljava/util/regex/Matcher;
    .param p2, "source"    # Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 209
    .local v0, "start":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_5

    .line 210
    const/4 v1, 0x1

    .line 211
    .local v1, "bracketDepth":I
    add-int/lit8 v3, v0, 0x1

    .line 212
    .local v3, "curr":I
    :goto_0
    if-lez v1, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 213
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_0

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 215
    :cond_0
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x29

    if-ne v4, v5, :cond_1

    .line 216
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 217
    :cond_1
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x22

    if-eq v4, v5, :cond_2

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x27

    if-ne v4, v5, :cond_3

    .line 218
    :cond_2
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v5, v3, 0x1

    invoke-static {p2, v4, v5}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->findNextUnescapedChar(Ljava/lang/String;CI)I

    move-result v3

    .line 220
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 222
    :cond_4
    if-nez v1, :cond_5

    .line 223
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v3, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 227
    .end local v1    # "bracketDepth":I
    .end local v3    # "curr":I
    :cond_5
    return-object p0
.end method

.method public static parseSelectorItems(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p0, "selector"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v0, "selectorItems":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;>;"
    sget-object v1, Lcom/itextpdf/styledxmlparser/css/parse/CssSelectorParser;->selectorPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 110
    .local v1, "match":Ljava/util/regex/Matcher;
    const/4 v2, 0x0

    .line 111
    .local v2, "tagSelectorDescription":Z
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 112
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, "selectorItem":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 114
    .local v5, "firstChar":C
    const/4 v6, 0x1

    sparse-switch v5, :sswitch_data_0

    .line 150
    if-nez v2, :cond_4

    .line 153
    const/4 v2, 0x1

    .line 154
    new-instance v3, Lcom/itextpdf/styledxmlparser/css/selector/item/CssTagSelectorItem;

    invoke-direct {v3, v4}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssTagSelectorItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 122
    :sswitch_0
    new-instance v3, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;

    invoke-direct {v3, v4}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    goto/16 :goto_1

    .line 125
    :sswitch_1
    invoke-static {v0, v4, v1, p0}, Lcom/itextpdf/styledxmlparser/css/parse/CssSelectorParser;->appendPseudoSelector(Ljava/util/List;Ljava/lang/String;Ljava/util/regex/Matcher;Ljava/lang/String;)V

    .line 126
    goto/16 :goto_1

    .line 119
    :sswitch_2
    new-instance v3, Lcom/itextpdf/styledxmlparser/css/selector/item/CssClassSelectorItem;

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssClassSelectorItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    goto/16 :goto_1

    .line 116
    :sswitch_3
    new-instance v3, Lcom/itextpdf/styledxmlparser/css/selector/item/CssIdSelectorItem;

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssIdSelectorItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    goto/16 :goto_1

    .line 131
    :sswitch_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_3

    .line 134
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;

    .line 135
    .local v7, "lastItem":Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;
    new-instance v8, Lcom/itextpdf/styledxmlparser/css/selector/item/CssSeparatorSelectorItem;

    invoke-direct {v8, v5}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssSeparatorSelectorItem;-><init>(C)V

    .line 136
    .local v8, "curItem":Lcom/itextpdf/styledxmlparser/css/selector/item/CssSeparatorSelectorItem;
    instance-of v9, v7, Lcom/itextpdf/styledxmlparser/css/selector/item/CssSeparatorSelectorItem;

    if-eqz v9, :cond_2

    .line 137
    invoke-virtual {v8}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssSeparatorSelectorItem;->getSeparator()C

    move-result v9

    const/16 v10, 0x20

    if-ne v9, v10, :cond_0

    .line 138
    goto :goto_1

    .line 139
    :cond_0
    move-object v9, v7

    check-cast v9, Lcom/itextpdf/styledxmlparser/css/selector/item/CssSeparatorSelectorItem;

    invoke-virtual {v9}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssSeparatorSelectorItem;->getSeparator()C

    move-result v9

    if-ne v9, v10, :cond_1

    .line 140
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-interface {v0, v3, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 142
    :cond_1
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    move-object v11, v7

    check-cast v11, Lcom/itextpdf/styledxmlparser/css/selector/item/CssSeparatorSelectorItem;

    invoke-virtual {v11}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssSeparatorSelectorItem;->getSeparator()C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    aput-object v11, v10, v3

    invoke-virtual {v8}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssSeparatorSelectorItem;->getSeparator()C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v10, v6

    const-string v3, "Invalid selector description. Two consequent characters occurred: {0}, {1}"

    invoke-static {v3, v10}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 145
    :cond_2
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    const/4 v2, 0x0

    .line 148
    goto :goto_1

    .line 132
    .end local v7    # "lastItem":Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;
    .end local v8    # "curItem":Lcom/itextpdf/styledxmlparser/css/selector/item/CssSeparatorSelectorItem;
    :cond_3
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    aput-object v8, v6, v3

    const-string v3, "Invalid token detected in the start of the selector string: {0}"

    invoke-static {v3, v6}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 157
    .end local v4    # "selectorItem":Ljava/lang/String;
    .end local v5    # "firstChar":C
    :goto_1
    goto/16 :goto_0

    .line 151
    .restart local v4    # "selectorItem":Ljava/lang/String;
    .restart local v5    # "firstChar":C
    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v6, "Invalid selector string"

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 159
    .end local v4    # "selectorItem":Ljava/lang/String;
    .end local v5    # "firstChar":C
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_6

    .line 163
    return-object v0

    .line 160
    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Selector declaration is invalid"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_4
        0x23 -> :sswitch_3
        0x2b -> :sswitch_4
        0x2e -> :sswitch_2
        0x3a -> :sswitch_1
        0x3e -> :sswitch_4
        0x5b -> :sswitch_0
        0x7e -> :sswitch_4
    .end sparse-switch
.end method
