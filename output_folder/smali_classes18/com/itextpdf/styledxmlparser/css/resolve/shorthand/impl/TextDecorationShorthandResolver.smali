.class public Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/TextDecorationShorthandResolver;
.super Ljava/lang/Object;
.source "TextDecorationShorthandResolver.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/IShorthandResolver;


# static fields
.field private static final TEXT_DECORATION_LINE_VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TEXT_DECORATION_STYLE_VALUES:Ljava/util/Set;
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
    .locals 6

    .line 38
    new-instance v0, Ljava/util/HashSet;

    const-string/jumbo v1, "underline"

    const-string v2, "overline"

    const-string v3, "line-through"

    const-string v4, "blink"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/TextDecorationShorthandResolver;->TEXT_DECORATION_LINE_VALUES:Ljava/util/Set;

    .line 46
    new-instance v0, Ljava/util/HashSet;

    const-string/jumbo v1, "solid"

    const-string v2, "double"

    const-string v3, "dotted"

    const-string v4, "dashed"

    const-string/jumbo v5, "wavy"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/TextDecorationShorthandResolver;->TEXT_DECORATION_STYLE_VALUES:Ljava/util/Set;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolveShorthand(Ljava/lang/String;)Ljava/util/List;
    .locals 14
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

    .line 57
    const-string v0, "initial"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "text-decoration-color"

    const-string/jumbo v3, "text-decoration-style"

    const/4 v4, 0x0

    const-string/jumbo v5, "text-decoration-line"

    if-nez v1, :cond_a

    .line 58
    const-string v1, "inherit"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_7

    .line 67
    :cond_0
    const-string v1, "\\s+(?![^\\(]*\\))"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "props":[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v6, "textDecorationLineValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 71
    .local v7, "textDecorationStyleValue":Ljava/lang/String;
    const/4 v8, 0x0

    .line 73
    .local v8, "textDecorationColorValue":Ljava/lang/String;
    array-length v9, v1

    :goto_0
    if-ge v4, v9, :cond_5

    aget-object v10, v1, v4

    .line 76
    .local v10, "value":Ljava/lang/String;
    sget-object v11, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/TextDecorationShorthandResolver;->TEXT_DECORATION_LINE_VALUES:Ljava/util/Set;

    invoke-interface {v11, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 77
    const-string v11, "none"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_1

    .line 79
    :cond_1
    sget-object v11, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/TextDecorationShorthandResolver;->TEXT_DECORATION_STYLE_VALUES:Ljava/util/Set;

    invoke-interface {v11, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 80
    move-object v7, v10

    goto :goto_2

    .line 81
    :cond_2
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    .line 82
    move-object v8, v10

    goto :goto_2

    .line 78
    :cond_3
    :goto_1
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .end local v10    # "value":Ljava/lang/String;
    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 86
    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v4, "resolvedDecl":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 88
    new-instance v9, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v9, v5, v0}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 90
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .local v9, "resultLine":Ljava/lang/StringBuilder;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 92
    .local v11, "line":Ljava/lang/String;
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .end local v11    # "line":Ljava/lang/String;
    goto :goto_3

    .line 94
    :cond_7
    new-instance v10, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v5, v11}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .end local v9    # "resultLine":Ljava/lang/StringBuilder;
    :goto_4
    new-instance v5, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    if-nez v7, :cond_8

    move-object v9, v0

    goto :goto_5

    :cond_8
    move-object v9, v7

    :goto_5
    invoke-direct {v5, v3, v9}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v3, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    if-nez v8, :cond_9

    goto :goto_6

    :cond_9
    move-object v0, v8

    :goto_6
    invoke-direct {v3, v2, v0}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    return-object v4

    .line 59
    .end local v1    # "props":[Ljava/lang/String;
    .end local v4    # "resolvedDecl":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    .end local v6    # "textDecorationLineValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "textDecorationStyleValue":Ljava/lang/String;
    .end local v8    # "textDecorationColorValue":Ljava/lang/String;
    :cond_a
    :goto_7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    new-instance v1, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v1, v5, p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v1, v3, p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-instance v3, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v3, v2, p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
