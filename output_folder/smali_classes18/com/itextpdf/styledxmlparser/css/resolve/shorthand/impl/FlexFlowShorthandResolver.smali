.class public Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexFlowShorthandResolver;
.super Ljava/lang/Object;
.source "FlexFlowShorthandResolver.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/IShorthandResolver;


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const-class v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexFlowShorthandResolver;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexFlowShorthandResolver;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fillUnresolvedPropertiesWithDefaultValues(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;)V"
        }
    .end annotation

    .line 153
    .local p1, "resolvedProperties":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexFlowShorthandResolver$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexFlowShorthandResolver$$ExternalSyntheticLambda0;-><init>()V

    .line 154
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    .line 156
    const-string v1, "flex-direction"

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/resolve/CssDefaults;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexFlowShorthandResolver$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexFlowShorthandResolver$$ExternalSyntheticLambda1;-><init>()V

    .line 159
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    .line 161
    const-string v1, "flex-wrap"

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/resolve/CssDefaults;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_1
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

    .line 148
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexFlowShorthandResolver;->LOGGER:Lorg/slf4j/Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 149
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$fillUnresolvedPropertiesWithDefaultValues$0(Lcom/itextpdf/styledxmlparser/css/CssDeclaration;)Z
    .locals 2
    .param p0, "property"    # Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    .line 154
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getProperty()Ljava/lang/String;

    move-result-object v0

    const-string v1, "flex-direction"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$fillUnresolvedPropertiesWithDefaultValues$1(Lcom/itextpdf/styledxmlparser/css/CssDeclaration;)Z
    .locals 2
    .param p0, "property"    # Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    .line 159
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getProperty()Ljava/lang/String;

    move-result-object v0

    const-string v1, "flex-wrap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public resolveShorthand(Ljava/lang/String;)Ljava/util/List;
    .locals 10
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

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isInitialOrInheritOrUnset(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-string v3, "flex-wrap"

    const-string v4, "flex-direction"

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 72
    new-array v0, v1, [Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    new-instance v1, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v1, v4, p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v1, v3, p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 77
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->containsInitialOrInheritOrUnset(Ljava/lang/String;)Z

    move-result v0

    const-string v6, "flex-flow"

    const-string v7, "Invalid css property declaration: {0}"

    if-eqz v0, :cond_1

    .line 78
    invoke-static {v7, v6, p1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexFlowShorthandResolver;->handleExpressionError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 82
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    const-string/jumbo v0, "{0} shorthand property cannot be empty."

    invoke-static {v0, v6, p1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexFlowShorthandResolver;->handleExpressionError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 87
    :cond_2
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "flexFlowProps":[Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v8, "resolvedProperties":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    array-length v9, v0

    if-ne v2, v9, :cond_5

    .line 91
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    aget-object v2, v0, v5

    invoke-direct {v1, v4, v2}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .local v1, "flexDirectionDeclaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/validate/CssDeclarationValidationMaster;->checkDeclaration(Lcom/itextpdf/styledxmlparser/css/CssDeclaration;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 94
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    :cond_3
    new-instance v2, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    aget-object v4, v0, v5

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .local v2, "flexWrapDeclaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/css/validate/CssDeclarationValidationMaster;->checkDeclaration(Lcom/itextpdf/styledxmlparser/css/CssDeclaration;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 99
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    .end local v1    # "flexDirectionDeclaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    .end local v2    # "flexWrapDeclaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    :goto_0
    goto :goto_2

    .line 101
    .restart local v1    # "flexDirectionDeclaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    .restart local v2    # "flexWrapDeclaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    :cond_4
    invoke-static {v7, v6, p1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexFlowShorthandResolver;->handleExpressionError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 106
    .end local v1    # "flexDirectionDeclaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    .end local v2    # "flexWrapDeclaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    :cond_5
    array-length v9, v0

    if-ne v1, v9, :cond_9

    .line 107
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    aget-object v6, v0, v5

    invoke-direct {v1, v4, v6}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .restart local v1    # "flexDirectionDeclaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    new-instance v6, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    aget-object v9, v0, v2

    invoke-direct {v6, v3, v9}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .local v6, "flexWrapDeclaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/validate/CssDeclarationValidationMaster;->checkDeclaration(Lcom/itextpdf/styledxmlparser/css/CssDeclaration;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 113
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 116
    :cond_6
    new-instance v9, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    aget-object v2, v0, v2

    invoke-direct {v9, v4, v2}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v9

    .line 118
    new-instance v2, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    aget-object v5, v0, v5

    invoke-direct {v2, v3, v5}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v2

    .line 121
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/validate/CssDeclarationValidationMaster;->checkDeclaration(Lcom/itextpdf/styledxmlparser/css/CssDeclaration;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 122
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :goto_1
    invoke-static {v6}, Lcom/itextpdf/styledxmlparser/css/validate/CssDeclarationValidationMaster;->checkDeclaration(Lcom/itextpdf/styledxmlparser/css/CssDeclaration;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 130
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    .end local v1    # "flexDirectionDeclaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    .end local v6    # "flexWrapDeclaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    nop

    .line 142
    :goto_2
    invoke-direct {p0, v8}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexFlowShorthandResolver;->fillUnresolvedPropertiesWithDefaultValues(Ljava/util/List;)V

    .line 143
    return-object v8

    .line 132
    .restart local v1    # "flexDirectionDeclaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    .restart local v6    # "flexWrapDeclaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    :cond_7
    invoke-static {v7, v3, p1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexFlowShorthandResolver;->handleExpressionError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 124
    :cond_8
    invoke-static {v7, v4, p1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexFlowShorthandResolver;->handleExpressionError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 137
    .end local v1    # "flexDirectionDeclaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    .end local v6    # "flexWrapDeclaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    :cond_9
    invoke-static {v7, v6, p1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexFlowShorthandResolver;->handleExpressionError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
