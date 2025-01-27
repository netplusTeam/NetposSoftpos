.class public Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/ListStyleShorthandResolver;
.super Ljava/lang/Object;
.source "ListStyleShorthandResolver.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/IShorthandResolver;


# static fields
.field private static final LIST_STYLE_POSITION_VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LIST_STYLE_TYPE_VALUES:Ljava/util/Set;
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
    .locals 20

    .line 64
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "disc"

    const-string v2, "armenian"

    const-string v3, "circle"

    const-string v4, "cjk-ideographic"

    const-string v5, "decimal"

    const-string v6, "decimal-leading-zero"

    const-string v7, "georgian"

    const-string v8, "hebrew"

    const-string v9, "hiragana"

    const-string v10, "hiragana-iroha"

    const-string v11, "lower-alpha"

    const-string v12, "lower-greek"

    const-string v13, "lower-latin"

    const-string v14, "lower-roman"

    const-string v15, "none"

    const-string/jumbo v16, "square"

    const-string/jumbo v17, "upper-alpha"

    const-string/jumbo v18, "upper-latin"

    const-string/jumbo v19, "upper-roman"

    filled-new-array/range {v1 .. v19}, [Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/ListStyleShorthandResolver;->LIST_STYLE_TYPE_VALUES:Ljava/util/Set;

    .line 88
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "inside"

    const-string v2, "outside"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/ListStyleShorthandResolver;->LIST_STYLE_POSITION_VALUES:Ljava/util/Set;

    .line 88
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolveShorthand(Ljava/lang/String;)Ljava/util/List;
    .locals 11
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

    .line 99
    const-string v0, "initial"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "list-style-image"

    const-string v3, "list-style-position"

    const-string v4, "list-style-type"

    const/4 v5, 0x0

    if-nez v1, :cond_9

    const-string v1, "inherit"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_6

    .line 106
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->extractShorthandProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 108
    .local v1, "props":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 109
    .local v5, "listStyleTypeValue":Ljava/lang/String;
    const/4 v6, 0x0

    .line 110
    .local v6, "listStylePositionValue":Ljava/lang/String;
    const/4 v7, 0x0

    .line 112
    .local v7, "listStyleImageValue":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 113
    .local v9, "value":Ljava/lang/String;
    const-string/jumbo v10, "url("

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-static {v9}, Lcom/itextpdf/styledxmlparser/css/util/CssGradientUtil;->isCssLinearGradientValue(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 114
    const-string v10, "none"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    if-eqz v5, :cond_1

    goto :goto_1

    .line 116
    :cond_1
    sget-object v10, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/ListStyleShorthandResolver;->LIST_STYLE_TYPE_VALUES:Ljava/util/Set;

    invoke-interface {v10, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 117
    move-object v5, v9

    goto :goto_2

    .line 118
    :cond_2
    sget-object v10, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/ListStyleShorthandResolver;->LIST_STYLE_POSITION_VALUES:Ljava/util/Set;

    invoke-interface {v10, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 119
    move-object v6, v9

    goto :goto_2

    .line 115
    :cond_3
    :goto_1
    move-object v7, v9

    .line 121
    .end local v9    # "value":Ljava/lang/String;
    :cond_4
    :goto_2
    goto :goto_0

    .line 123
    :cond_5
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v8, "resolvedDecl":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    new-instance v9, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    if-nez v5, :cond_6

    move-object v10, v0

    goto :goto_3

    :cond_6
    move-object v10, v5

    :goto_3
    invoke-direct {v9, v4, v10}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v4, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    if-nez v6, :cond_7

    move-object v9, v0

    goto :goto_4

    :cond_7
    move-object v9, v6

    :goto_4
    invoke-direct {v4, v3, v9}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v3, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    if-nez v7, :cond_8

    goto :goto_5

    :cond_8
    move-object v0, v7

    :goto_5
    invoke-direct {v3, v2, v0}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    return-object v8

    .line 100
    .end local v1    # "props":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "listStyleTypeValue":Ljava/lang/String;
    .end local v6    # "listStylePositionValue":Ljava/lang/String;
    .end local v7    # "listStyleImageValue":Ljava/lang/String;
    .end local v8    # "resolvedDecl":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    :cond_9
    :goto_6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    new-instance v1, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v1, v4, p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    const/4 v1, 0x1

    new-instance v4, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v4, v3, p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v1

    const/4 v1, 0x2

    new-instance v3, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v3, v2, p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
