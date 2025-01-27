.class public Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/GapShorthandResolver;
.super Ljava/lang/Object;
.source "GapShorthandResolver.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/IShorthandResolver;


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const-class v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/GapShorthandResolver;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/GapShorthandResolver;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static handleExpressionError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "logMessage"    # Ljava/lang/String;
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "shorthandExpression"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;"
        }
    .end annotation

    .line 113
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/GapShorthandResolver;->LOGGER:Lorg/slf4j/Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 114
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private resolveGapWithTwoProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "row"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    const-string/jumbo v1, "row-gap"

    invoke-direct {v0, v1, p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .local v0, "rowGapDeclaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/validate/CssDeclarationValidationMaster;->checkDeclaration(Lcom/itextpdf/styledxmlparser/css/CssDeclaration;)Z

    move-result v2

    const-string v3, "Invalid css property declaration: {0}"

    if-nez v2, :cond_0

    .line 100
    invoke-static {v3, v1, p1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/GapShorthandResolver;->handleExpressionError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 103
    :cond_0
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    const-string v2, "column-gap"

    invoke-direct {v1, v2, p2}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .local v1, "columnGapDeclaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/validate/CssDeclarationValidationMaster;->checkDeclaration(Lcom/itextpdf/styledxmlparser/css/CssDeclaration;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 105
    invoke-static {v3, v2, p2}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/GapShorthandResolver;->handleExpressionError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 108
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public resolveShorthand(Ljava/lang/String;)Ljava/util/List;
    .locals 7
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

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isInitialOrInheritOrUnset(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 70
    new-array v0, v1, [Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    new-instance v1, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    const-string/jumbo v4, "row-gap"

    invoke-direct {v1, v4, p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    const-string v3, "column-gap"

    invoke-direct {v1, v3, p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 75
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->containsInitialOrInheritOrUnset(Ljava/lang/String;)Z

    move-result v0

    const-string v4, "Invalid css property declaration: {0}"

    const-string v5, "gap"

    if-eqz v0, :cond_1

    .line 76
    invoke-static {v4, v5, p1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/GapShorthandResolver;->handleExpressionError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 79
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    const-string/jumbo v0, "{0} shorthand property cannot be empty."

    invoke-static {v0, v5, p1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/GapShorthandResolver;->handleExpressionError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 84
    :cond_2
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "gapProps":[Ljava/lang/String;
    array-length v6, v0

    if-ne v6, v2, :cond_3

    .line 87
    aget-object v1, v0, v3

    aget-object v2, v0, v3

    invoke-direct {p0, v1, v2}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/GapShorthandResolver;->resolveGapWithTwoProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 88
    :cond_3
    array-length v6, v0

    if-ne v6, v1, :cond_4

    .line 89
    aget-object v1, v0, v3

    aget-object v2, v0, v2

    invoke-direct {p0, v1, v2}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/GapShorthandResolver;->resolveGapWithTwoProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 91
    :cond_4
    invoke-static {v4, v5, p1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/GapShorthandResolver;->handleExpressionError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
