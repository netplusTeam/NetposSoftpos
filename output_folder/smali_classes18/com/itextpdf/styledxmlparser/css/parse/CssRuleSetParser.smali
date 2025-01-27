.class public final Lcom/itextpdf/styledxmlparser/css/parse/CssRuleSetParser;
.super Ljava/lang/Object;
.source "CssRuleSetParser.java"


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    const-class v0, Lcom/itextpdf/styledxmlparser/css/parse/CssRuleSetParser;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/parse/CssRuleSetParser;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method private static getSemicolonPosition(Ljava/lang/String;I)I
    .locals 7
    .param p0, "propertiesStr"    # Ljava/lang/String;
    .param p1, "fromIndex"    # I

    .line 176
    const-string v0, ";"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 177
    .local v0, "semiColonPos":I
    add-int/lit8 v1, v0, 0x1

    const-string v2, ")"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 178
    .local v1, "closedBracketPos":I
    const-string v2, "("

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 179
    .local v3, "openedBracketPos":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    if-ge v3, v0, :cond_1

    if-lez v1, :cond_1

    .line 180
    move v5, v3

    .line 182
    .local v5, "nextOpenedBracketPos":I
    :cond_0
    move v3, v5

    .line 183
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 184
    if-ge v5, v1, :cond_1

    if-gtz v5, :cond_0

    .line 186
    .end local v5    # "nextOpenedBracketPos":I
    :cond_1
    if-eq v0, v4, :cond_2

    if-le v0, v3, :cond_2

    if-ge v0, v1, :cond_2

    .line 187
    add-int/lit8 v2, v1, 0x1

    invoke-static {p0, v2}, Lcom/itextpdf/styledxmlparser/css/parse/CssRuleSetParser;->getSemicolonPosition(Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 189
    :cond_2
    return v0
.end method

.method public static parsePropertyDeclarations(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "propertiesStr"    # Ljava/lang/String;
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

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v0, "declarations":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    const-string v1, "/*"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 83
    .local v1, "openedCommentPos":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 84
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/css/parse/CssRuleSetParser;->parsePropertyDeclarations(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 85
    const-string v2, "*/"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 86
    .local v2, "closedCommentPos":I
    if-eq v2, v3, :cond_0

    .line 87
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/styledxmlparser/css/parse/CssRuleSetParser;->parsePropertyDeclarations(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 89
    .end local v2    # "closedCommentPos":I
    :cond_0
    goto :goto_1

    .line 90
    :cond_1
    invoke-static {p0, v2}, Lcom/itextpdf/styledxmlparser/css/parse/CssRuleSetParser;->getSemicolonPosition(Ljava/lang/String;I)I

    move-result v4

    .line 91
    .local v4, "pos":I
    :goto_0
    const/4 v5, 0x1

    if-eq v4, v3, :cond_3

    .line 92
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/itextpdf/styledxmlparser/css/parse/CssRuleSetParser;->splitCssProperty(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 93
    .local v6, "propertySplit":[Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 94
    new-instance v7, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    aget-object v8, v6, v2

    aget-object v5, v6, v5

    invoke-direct {v7, v8, v5}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_2
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 97
    invoke-static {p0, v2}, Lcom/itextpdf/styledxmlparser/css/parse/CssRuleSetParser;->getSemicolonPosition(Ljava/lang/String;I)I

    move-result v4

    .line 98
    .end local v6    # "propertySplit":[Ljava/lang/String;
    goto :goto_0

    .line 99
    :cond_3
    const-string v3, "[\\n\\r\\t ]"

    const-string v6, ""

    invoke-virtual {p0, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 100
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/parse/CssRuleSetParser;->splitCssProperty(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, "propertySplit":[Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 102
    new-instance v6, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    aget-object v2, v3, v2

    aget-object v5, v3, v5

    invoke-direct {v6, v2, v5}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_4
    return-object v0

    .line 107
    .end local v3    # "propertySplit":[Ljava/lang/String;
    .end local v4    # "pos":I
    :cond_5
    :goto_1
    return-object v0
.end method

.method public static parseRuleSet(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "selectorStr"    # Ljava/lang/String;
    .param p1, "propertiesStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssRuleSet;",
            ">;"
        }
    .end annotation

    .line 121
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/parse/CssRuleSetParser;->parsePropertyDeclarations(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 122
    .local v0, "declarations":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v1, "ruleSets":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssRuleSet;>;"
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "selectors":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 127
    aget-object v4, v2, v3

    invoke-static {v4}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->removeDoubleSpacesAndTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 128
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 129
    return-object v1

    .line 126
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 131
    .end local v3    # "i":I
    :cond_1
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    .line 133
    .local v6, "currentSelectorStr":Ljava/lang/String;
    :try_start_0
    new-instance v7, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;

    new-instance v8, Lcom/itextpdf/styledxmlparser/css/selector/CssSelector;

    invoke-direct {v8, v6}, Lcom/itextpdf/styledxmlparser/css/selector/CssSelector;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8, v0}, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;-><init>(Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;Ljava/util/List;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    nop

    .line 131
    .end local v6    # "currentSelectorStr":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 134
    .restart local v6    # "currentSelectorStr":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 135
    .local v3, "exc":Ljava/lang/Exception;
    sget-object v5, Lcom/itextpdf/styledxmlparser/css/parse/CssRuleSetParser;->logger:Lorg/slf4j/Logger;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v4

    const-string v4, "Error while parsing css selector: {0}"

    invoke-static {v4, v7}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 139
    return-object v1

    .line 143
    .end local v3    # "exc":Ljava/lang/Exception;
    .end local v6    # "currentSelectorStr":Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method private static splitCssProperty(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p0, "property"    # Ljava/lang/String;

    .line 153
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 154
    return-object v1

    .line 156
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 157
    .local v0, "result":[Ljava/lang/String;
    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 158
    .local v2, "position":I
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gez v2, :cond_1

    .line 159
    sget-object v5, Lcom/itextpdf/styledxmlparser/css/parse/CssRuleSetParser;->logger:Lorg/slf4j/Logger;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    const-string v4, "Invalid css property declaration: {0}"

    invoke-static {v4, v3}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 160
    return-object v1

    .line 162
    :cond_1
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 163
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 165
    return-object v0
.end method
