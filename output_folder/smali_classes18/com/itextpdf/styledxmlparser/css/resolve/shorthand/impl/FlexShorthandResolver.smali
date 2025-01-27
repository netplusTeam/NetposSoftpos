.class public Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexShorthandResolver;
.super Ljava/lang/Object;
.source "FlexShorthandResolver.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/IShorthandResolver;


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const-class v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexShorthandResolver;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexShorthandResolver;->LOGGER:Lorg/slf4j/Logger;

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

    .line 240
    .local p1, "resolvedProperties":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexShorthandResolver$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexShorthandResolver$$ExternalSyntheticLambda0;-><init>()V

    .line 241
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    .line 243
    const-string v1, "flex-grow"

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/resolve/CssDefaults;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexShorthandResolver$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexShorthandResolver$$ExternalSyntheticLambda1;-><init>()V

    .line 246
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 247
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    .line 248
    const-string v1, "flex-shrink"

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/resolve/CssDefaults;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexShorthandResolver$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexShorthandResolver$$ExternalSyntheticLambda2;-><init>()V

    .line 251
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 253
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    const-string v1, "flex-basis"

    const-string v2, "0"

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_2
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

    .line 259
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexShorthandResolver;->LOGGER:Lorg/slf4j/Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 260
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$fillUnresolvedPropertiesWithDefaultValues$0(Lcom/itextpdf/styledxmlparser/css/CssDeclaration;)Z
    .locals 2
    .param p0, "property"    # Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    .line 241
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getProperty()Ljava/lang/String;

    move-result-object v0

    const-string v1, "flex-grow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$fillUnresolvedPropertiesWithDefaultValues$1(Lcom/itextpdf/styledxmlparser/css/CssDeclaration;)Z
    .locals 2
    .param p0, "property"    # Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    .line 246
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getProperty()Ljava/lang/String;

    move-result-object v0

    const-string v1, "flex-shrink"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$fillUnresolvedPropertiesWithDefaultValues$2(Lcom/itextpdf/styledxmlparser/css/CssDeclaration;)Z
    .locals 2
    .param p0, "property"    # Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    .line 251
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getProperty()Ljava/lang/String;

    move-result-object v0

    const-string v1, "flex-basis"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private resolveShorthandWithOneValue(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "firstProperty"    # Ljava/lang/String;
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

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v0, "resolvedProperties":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    const-string v2, "flex-grow"

    invoke-direct {v1, v2, p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .local v1, "flexGrowDeclaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/validate/CssDeclarationValidationMaster;->checkDeclaration(Lcom/itextpdf/styledxmlparser/css/CssDeclaration;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    return-object v0

    .line 134
    :cond_0
    new-instance v3, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    const-string v4, "flex-basis"

    invoke-direct {v3, v4, p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .local v3, "flexBasisDeclaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    invoke-static {v3}, Lcom/itextpdf/styledxmlparser/css/validate/CssDeclarationValidationMaster;->checkDeclaration(Lcom/itextpdf/styledxmlparser/css/CssDeclaration;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 136
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    return-object v0

    .line 139
    :cond_1
    const-string v4, "Invalid css property declaration: {0}"

    invoke-static {v4, v2, p1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexShorthandResolver;->handleExpressionError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private resolveShorthandWithThreeValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "firstProperty"    # Ljava/lang/String;
    .param p2, "secondProperty"    # Ljava/lang/String;
    .param p3, "thirdProperty"    # Ljava/lang/String;
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

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v0, "resolvedProperties":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    const-string v2, "flex-grow"

    invoke-direct {v1, v2, p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .local v1, "flexGrowDeclaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/validate/CssDeclarationValidationMaster;->checkDeclaration(Lcom/itextpdf/styledxmlparser/css/CssDeclaration;)Z

    move-result v3

    const-string v4, "flex-basis"

    const-string v5, "flex-shrink"

    const-string v6, "Invalid css property declaration: {0}"

    if-eqz v3, :cond_2

    .line 192
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v2, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v2, v5, p2}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .local v2, "flexShrinkDeclaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/css/validate/CssDeclarationValidationMaster;->checkDeclaration(Lcom/itextpdf/styledxmlparser/css/CssDeclaration;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 196
    invoke-static {v6, v5, p2}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexShorthandResolver;->handleExpressionError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 199
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v3, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v3, v4, p3}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .local v3, "flexBasisDeclaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    invoke-static {v3}, Lcom/itextpdf/styledxmlparser/css/validate/CssDeclarationValidationMaster;->checkDeclaration(Lcom/itextpdf/styledxmlparser/css/CssDeclaration;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 203
    invoke-static {v6, v4, p3}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexShorthandResolver;->handleExpressionError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 206
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    return-object v0

    .line 212
    .end local v2    # "flexShrinkDeclaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    .end local v3    # "flexBasisDeclaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    :cond_2
    new-instance v3, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v3, v2, p2}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    .line 213
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/validate/CssDeclarationValidationMaster;->checkDeclaration(Lcom/itextpdf/styledxmlparser/css/CssDeclaration;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 214
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v2, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v2, v5, p3}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .restart local v2    # "flexShrinkDeclaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/css/validate/CssDeclarationValidationMaster;->checkDeclaration(Lcom/itextpdf/styledxmlparser/css/CssDeclaration;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 218
    invoke-static {v6, v5, p3}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexShorthandResolver;->handleExpressionError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 221
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    new-instance v3, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v3, v4, p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .restart local v3    # "flexBasisDeclaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    invoke-static {v3}, Lcom/itextpdf/styledxmlparser/css/validate/CssDeclarationValidationMaster;->checkDeclaration(Lcom/itextpdf/styledxmlparser/css/CssDeclaration;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 225
    invoke-static {v6, v4, p1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexShorthandResolver;->handleExpressionError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 228
    :cond_4
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    return-object v0

    .line 233
    .end local v2    # "flexShrinkDeclaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    .end local v3    # "flexBasisDeclaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    :cond_5
    invoke-static {v6, v2, p2}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexShorthandResolver;->handleExpressionError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private resolveShorthandWithTwoValues(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "firstProperty"    # Ljava/lang/String;
    .param p2, "secondProperty"    # Ljava/lang/String;
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

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v0, "resolvedProperties":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    const-string v2, "flex-grow"

    invoke-direct {v1, v2, p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .local v1, "flexGrowDeclaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/validate/CssDeclarationValidationMaster;->checkDeclaration(Lcom/itextpdf/styledxmlparser/css/CssDeclaration;)Z

    move-result v3

    const-string v4, "flex-shrink"

    const-string v5, "Invalid css property declaration: {0}"

    const-string v6, "flex-basis"

    if-eqz v3, :cond_2

    .line 150
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v2, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v2, v4, p2}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .local v2, "flexShrinkDeclaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/css/validate/CssDeclarationValidationMaster;->checkDeclaration(Lcom/itextpdf/styledxmlparser/css/CssDeclaration;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    return-object v0

    .line 157
    :cond_0
    new-instance v3, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v3, v6, p2}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .local v3, "flexBasisDeclaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    invoke-static {v3}, Lcom/itextpdf/styledxmlparser/css/validate/CssDeclarationValidationMaster;->checkDeclaration(Lcom/itextpdf/styledxmlparser/css/CssDeclaration;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 160
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    return-object v0

    .line 163
    :cond_1
    invoke-static {v5, v6, p2}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexShorthandResolver;->handleExpressionError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 168
    .end local v2    # "flexShrinkDeclaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    .end local v3    # "flexBasisDeclaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    :cond_2
    new-instance v3, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v3, v6, p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .restart local v3    # "flexBasisDeclaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    invoke-static {v3}, Lcom/itextpdf/styledxmlparser/css/validate/CssDeclarationValidationMaster;->checkDeclaration(Lcom/itextpdf/styledxmlparser/css/CssDeclaration;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 171
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-virtual {v1, p2}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->setExpression(Ljava/lang/String;)V

    .line 173
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/validate/CssDeclarationValidationMaster;->checkDeclaration(Lcom/itextpdf/styledxmlparser/css/CssDeclaration;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 174
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    return-object v0

    .line 177
    :cond_3
    invoke-static {v5, v2, p2}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexShorthandResolver;->handleExpressionError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 180
    :cond_4
    invoke-static {v5, v4, p2}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexShorthandResolver;->handleExpressionError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
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

    const-string v1, "flex-basis"

    const-string v2, "flex-shrink"

    const-string v3, "flex-grow"

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    .line 72
    new-array v0, v4, [Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    new-instance v4, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v4, v3, p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v7

    new-instance v3, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v3, v2, p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v0, v6

    new-instance v2, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v2, v1, p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 78
    :cond_0
    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 79
    new-array v4, v4, [Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    new-instance v8, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    const-string v9, "1"

    invoke-direct {v8, v3, v9}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v8, v4, v7

    new-instance v3, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v3, v2, v9}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v4, v6

    new-instance v2, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v2, v1, v0}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 85
    :cond_1
    const-string v8, "none"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 86
    new-array v4, v4, [Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    new-instance v8, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    const-string v9, "0"

    invoke-direct {v8, v3, v9}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v8, v4, v7

    new-instance v3, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v3, v2, v9}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v4, v6

    new-instance v2, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v2, v1, v0}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 92
    :cond_2
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->containsInitialOrInheritOrUnset(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Invalid css property declaration: {0}"

    const-string v2, "flex"

    if-eqz v0, :cond_3

    .line 93
    invoke-static {v1, v2, p1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexShorthandResolver;->handleExpressionError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 96
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 97
    const-string/jumbo v0, "{0} shorthand property cannot be empty."

    invoke-static {v0, v2, p1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexShorthandResolver;->handleExpressionError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 101
    :cond_4
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "flexProps":[Ljava/lang/String;
    array-length v3, v0

    packed-switch v3, :pswitch_data_0

    .line 116
    invoke-static {v1, v2, p1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexShorthandResolver;->handleExpressionError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 112
    :pswitch_0
    aget-object v1, v0, v7

    aget-object v2, v0, v6

    aget-object v3, v0, v5

    invoke-direct {p0, v1, v2, v3}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexShorthandResolver;->resolveShorthandWithThreeValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 114
    .local v1, "resolvedProperties":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    goto :goto_0

    .line 109
    .end local v1    # "resolvedProperties":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    :pswitch_1
    aget-object v1, v0, v7

    aget-object v2, v0, v6

    invoke-direct {p0, v1, v2}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexShorthandResolver;->resolveShorthandWithTwoValues(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 110
    .restart local v1    # "resolvedProperties":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    goto :goto_0

    .line 106
    .end local v1    # "resolvedProperties":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    :pswitch_2
    aget-object v1, v0, v7

    invoke-direct {p0, v1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexShorthandResolver;->resolveShorthandWithOneValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 107
    .restart local v1    # "resolvedProperties":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    nop

    .line 120
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 121
    invoke-direct {p0, v1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexShorthandResolver;->fillUnresolvedPropertiesWithDefaultValues(Ljava/util/List;)V

    .line 123
    :cond_5
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
