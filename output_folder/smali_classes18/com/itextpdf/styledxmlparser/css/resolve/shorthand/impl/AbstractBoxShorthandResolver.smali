.class public abstract Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/AbstractBoxShorthandResolver;
.super Ljava/lang/Object;
.source "AbstractBoxShorthandResolver.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/IShorthandResolver;


# static fields
.field private static final _0_BOTTOM_1:Ljava/lang/String; = "{0}-bottom{1}"

.field private static final _0_LEFT_1:Ljava/lang/String; = "{0}-left{1}"

.field private static final _0_RIGHT_1:Ljava/lang/String; = "{0}-right{1}"

.field private static final _0_TOP_1:Ljava/lang/String; = "{0}-top{1}"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getPostfix()Ljava/lang/String;
.end method

.method protected abstract getPrefix()Ljava/lang/String;
.end method

.method public resolveShorthand(Ljava/lang/String;)Ljava/util/List;
    .locals 13
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

    .line 93
    const-string v0, "\\s+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "props":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v1, "resolvedDecl":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/AbstractBoxShorthandResolver;->getPrefix()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/AbstractBoxShorthandResolver;->getPostfix()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string/jumbo v4, "{0}-top{1}"

    invoke-static {v4, v3}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "topProperty":Ljava/lang/String;
    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/AbstractBoxShorthandResolver;->getPrefix()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/AbstractBoxShorthandResolver;->getPostfix()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const-string/jumbo v7, "{0}-right{1}"

    invoke-static {v7, v4}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, "rightProperty":Ljava/lang/String;
    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/AbstractBoxShorthandResolver;->getPrefix()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/AbstractBoxShorthandResolver;->getPostfix()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    const-string/jumbo v8, "{0}-bottom{1}"

    invoke-static {v8, v7}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 98
    .local v7, "bottomProperty":Ljava/lang/String;
    new-array v8, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/AbstractBoxShorthandResolver;->getPrefix()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/AbstractBoxShorthandResolver;->getPostfix()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    const-string/jumbo v9, "{0}-left{1}"

    invoke-static {v9, v8}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 99
    .local v8, "leftProperty":Ljava/lang/String;
    array-length v9, v0

    if-ne v9, v6, :cond_0

    .line 100
    new-instance v2, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    aget-object v6, v0, v5

    invoke-direct {v2, v3, v6}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v2, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    aget-object v6, v0, v5

    invoke-direct {v2, v4, v6}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v2, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    aget-object v6, v0, v5

    invoke-direct {v2, v7, v6}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v2, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    aget-object v5, v0, v5

    invoke-direct {v2, v8, v5}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 105
    :cond_0
    array-length v9, v0

    move v10, v5

    :goto_0
    if-ge v10, v9, :cond_3

    aget-object v11, v0, v10

    .line 106
    .local v11, "prop":Ljava/lang/String;
    const-string v12, "inherit"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string v12, "initial"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    goto :goto_1

    .line 105
    .end local v11    # "prop":Ljava/lang/String;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 107
    .restart local v11    # "prop":Ljava/lang/String;
    :cond_2
    :goto_1
    const-class v2, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/AbstractBoxShorthandResolver;

    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 108
    .local v2, "logger":Lorg/slf4j/Logger;
    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v5

    const-string v5, "Invalid css property declaration: {0}"

    invoke-static {v5, v6}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 109
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    return-object v5

    .line 112
    .end local v2    # "logger":Lorg/slf4j/Logger;
    .end local v11    # "prop":Ljava/lang/String;
    :cond_3
    array-length v9, v0

    if-ne v9, v2, :cond_4

    .line 113
    new-instance v2, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    aget-object v9, v0, v5

    invoke-direct {v2, v3, v9}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v2, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    aget-object v9, v0, v6

    invoke-direct {v2, v4, v9}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v2, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    aget-object v5, v0, v5

    invoke-direct {v2, v7, v5}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v2, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    aget-object v5, v0, v6

    invoke-direct {v2, v8, v5}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 117
    :cond_4
    array-length v9, v0

    const/4 v10, 0x3

    if-ne v9, v10, :cond_5

    .line 118
    new-instance v9, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    aget-object v5, v0, v5

    invoke-direct {v9, v3, v5}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v5, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    aget-object v9, v0, v6

    invoke-direct {v5, v4, v9}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v5, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    aget-object v2, v0, v2

    invoke-direct {v5, v7, v2}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v2, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    aget-object v5, v0, v6

    invoke-direct {v2, v8, v5}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 122
    :cond_5
    array-length v9, v0

    const/4 v11, 0x4

    if-ne v9, v11, :cond_6

    .line 123
    new-instance v9, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    aget-object v5, v0, v5

    invoke-direct {v9, v3, v5}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v5, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    aget-object v6, v0, v6

    invoke-direct {v5, v4, v6}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v5, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    aget-object v2, v0, v2

    invoke-direct {v5, v7, v2}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v2, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    aget-object v5, v0, v10

    invoke-direct {v2, v8, v5}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_6
    :goto_2
    return-object v1
.end method
