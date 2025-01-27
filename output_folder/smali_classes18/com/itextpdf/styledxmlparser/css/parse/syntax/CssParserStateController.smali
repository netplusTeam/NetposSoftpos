.class public final Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;
.super Ljava/lang/Object;
.source "CssParserStateController.java"


# static fields
.field private static final CONDITIONAL_GROUP_RULES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPPORTED_RULES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final atRuleBlockState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

.field private buffer:Ljava/lang/StringBuilder;

.field private final commendEndState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

.field private final commendInnerState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

.field private final commentStartState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

.field private final conditionalGroupAtRuleBlockState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

.field private currentSelector:Ljava/lang/String;

.field private currentState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

.field private isCurrentRuleSupported:Z

.field private nestedAtRules:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;",
            ">;"
        }
    .end annotation
.end field

.field private previousActiveState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

.field private final propertiesState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

.field private final ruleState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

.field private storedPropertiesWithoutSelector:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;>;"
        }
    .end annotation
.end field

.field private styleSheet:Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

.field private final unknownState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

.field private uriResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 100
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "media"

    const-string v2, "page"

    const-string/jumbo v3, "top-left-corner"

    const-string/jumbo v4, "top-left"

    const-string/jumbo v5, "top-center"

    const-string/jumbo v6, "top-right"

    const-string/jumbo v7, "top-right-corner"

    const-string v8, "bottom-left-corner"

    const-string v9, "bottom-left"

    const-string v10, "bottom-center"

    const-string v11, "bottom-right"

    const-string v12, "bottom-right-corner"

    const-string v13, "left-top"

    const-string v14, "left-middle"

    const-string v15, "left-bottom"

    const-string/jumbo v16, "right-top"

    const-string/jumbo v17, "right-middle"

    const-string/jumbo v18, "right-bottom"

    const-string v19, "font-face"

    filled-new-array/range {v1 .. v19}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->SUPPORTED_RULES:Ljava/util/Set;

    .line 110
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "media"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->CONDITIONAL_GROUP_RULES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 145
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;-><init>(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "baseUrl"    # Ljava/lang/String;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->isCurrentRuleSupported:Z

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->buffer:Ljava/lang/StringBuilder;

    .line 154
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 155
    new-instance v0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->uriResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;

    .line 157
    :cond_0
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->styleSheet:Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    .line 158
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->nestedAtRules:Ljava/util/Stack;

    .line 159
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->storedPropertiesWithoutSelector:Ljava/util/Stack;

    .line 161
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CommentStartState;

    invoke-direct {v0, p0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CommentStartState;-><init>(Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;)V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->commentStartState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    .line 162
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CommentEndState;

    invoke-direct {v0, p0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CommentEndState;-><init>(Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;)V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->commendEndState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    .line 163
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CommentInnerState;

    invoke-direct {v0, p0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CommentInnerState;-><init>(Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;)V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->commendInnerState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    .line 164
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/UnknownState;

    invoke-direct {v0, p0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/UnknownState;-><init>(Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;)V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->unknownState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    .line 165
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/parse/syntax/RuleState;

    invoke-direct {v1, p0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/RuleState;-><init>(Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;)V

    iput-object v1, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->ruleState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    .line 166
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/parse/syntax/PropertiesState;

    invoke-direct {v1, p0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/PropertiesState;-><init>(Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;)V

    iput-object v1, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->propertiesState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    .line 167
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/parse/syntax/AtRuleBlockState;

    invoke-direct {v1, p0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/AtRuleBlockState;-><init>(Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;)V

    iput-object v1, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->atRuleBlockState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    .line 168
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/parse/syntax/ConditionalGroupAtRuleBlockState;

    invoke-direct {v1, p0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/ConditionalGroupAtRuleBlockState;-><init>(Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;)V

    iput-object v1, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->conditionalGroupAtRuleBlockState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    .line 170
    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->currentState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    .line 171
    return-void
.end method

.method private currentAtRuleIsConditionalGroupRule()Z
    .locals 2

    .line 506
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->isCurrentRuleSupported:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->nestedAtRules:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->CONDITIONAL_GROUP_RULES:Ljava/util/Set;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->nestedAtRules:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;->getRuleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isCurrentRuleSupported()Z
    .locals 5

    .line 493
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->nestedAtRules:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->SUPPORTED_RULES:Ljava/util/Set;

    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->nestedAtRules:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;

    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;->getRuleName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 494
    .local v0, "isSupported":Z
    :goto_1
    if-nez v0, :cond_2

    .line 495
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->nestedAtRules:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;

    invoke-virtual {v4}, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;->getRuleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    const-string v1, "The rule @{0} is unsupported. All selectors in this rule will be ignored."

    invoke-static {v1, v2}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 497
    :cond_2
    return v0
.end method

.method private normalizeDeclarationURIs(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;)V"
        }
    .end annotation

    .line 424
    .local p1, "declarations":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->uriResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;

    if-nez v0, :cond_0

    .line 425
    return-void

    .line 427
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    .line 428
    .local v1, "declaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getExpression()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "url("

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 429
    new-instance v2, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getExpression()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;-><init>(Ljava/lang/String;)V

    .line 431
    .local v2, "tokenizer":Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 432
    .local v4, "normalizedDeclaration":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->getNextValidToken()Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;

    move-result-object v5

    move-object v6, v5

    .local v6, "token":Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;
    if-eqz v5, :cond_7

    .line 434
    invoke-virtual {v6}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;->getType()Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;

    move-result-object v5

    sget-object v7, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;->FUNCTION:Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;

    if-ne v5, v7, :cond_5

    invoke-virtual {v6}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 435
    invoke-virtual {v6}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 436
    .local v5, "url":Ljava/lang/String;
    const/4 v7, 0x4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 437
    invoke-static {v5}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isBase64Data(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 438
    invoke-virtual {v6}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .local v7, "strToAppend":Ljava/lang/String;
    goto :goto_3

    .line 440
    .end local v7    # "strToAppend":Ljava/lang/String;
    :cond_1
    const-string v7, "\'"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    const-string v7, "\""

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 441
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v9

    invoke-virtual {v5, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 443
    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 444
    move-object v7, v5

    .line 446
    .local v7, "finalUrl":Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->uriResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;

    invoke-virtual {v8, v5}, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->resolveAgainstBaseUri(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v8

    .line 448
    goto :goto_2

    .line 447
    :catch_0
    move-exception v8

    .line 449
    :goto_2
    new-array v8, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    const-string/jumbo v9, "url({0})"

    invoke-static {v9, v8}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 451
    .end local v5    # "url":Ljava/lang/String;
    .local v7, "strToAppend":Ljava/lang/String;
    :goto_3
    goto :goto_4

    .line 452
    .end local v7    # "strToAppend":Ljava/lang/String;
    :cond_5
    invoke-virtual {v6}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 454
    .restart local v7    # "strToAppend":Ljava/lang/String;
    :goto_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_6

    .line 455
    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 457
    :cond_6
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .end local v7    # "strToAppend":Ljava/lang/String;
    goto/16 :goto_1

    .line 459
    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->setExpression(Ljava/lang/String;)V

    .line 461
    .end local v1    # "declaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    .end local v2    # "tokenizer":Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;
    .end local v4    # "normalizedDeclaration":Ljava/lang/StringBuilder;
    .end local v6    # "token":Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;
    :cond_8
    goto/16 :goto_0

    .line 462
    :cond_9
    return-void
.end method

.method private processFinishedAtRuleBlock(Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;)V
    .locals 1
    .param p1, "atRule"    # Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;

    .line 480
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->nestedAtRules:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->nestedAtRules:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;->addStatementToBody(Lcom/itextpdf/styledxmlparser/css/CssStatement;)V

    goto :goto_0

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->styleSheet:Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;->addStatement(Lcom/itextpdf/styledxmlparser/css/CssStatement;)V

    .line 485
    :goto_0
    return-void
.end method

.method private processProperties(Ljava/lang/String;)V
    .locals 2
    .param p1, "properties"    # Ljava/lang/String;

    .line 410
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->storedPropertiesWithoutSelector:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 411
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/parse/CssRuleSetParser;->parsePropertyDeclarations(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 412
    .local v0, "cssDeclarations":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->normalizeDeclarationURIs(Ljava/util/List;)V

    .line 413
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->storedPropertiesWithoutSelector:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 415
    .end local v0    # "cssDeclarations":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    :cond_0
    return-void
.end method

.method private processProperties(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "selector"    # Ljava/lang/String;
    .param p2, "properties"    # Ljava/lang/String;

    .line 390
    invoke-static {p1, p2}, Lcom/itextpdf/styledxmlparser/css/parse/CssRuleSetParser;->parseRuleSet(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 391
    .local v0, "ruleSets":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssRuleSet;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;

    .line 392
    .local v2, "ruleSet":Lcom/itextpdf/styledxmlparser/css/CssRuleSet;
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->getNormalDeclarations()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->normalizeDeclarationURIs(Ljava/util/List;)V

    .line 393
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->getImportantDeclarations()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->normalizeDeclarationURIs(Ljava/util/List;)V

    .line 394
    .end local v2    # "ruleSet":Lcom/itextpdf/styledxmlparser/css/CssRuleSet;
    goto :goto_0

    .line 395
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;

    .line 396
    .restart local v2    # "ruleSet":Lcom/itextpdf/styledxmlparser/css/CssRuleSet;
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->nestedAtRules:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 397
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->styleSheet:Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    invoke-virtual {v3, v2}, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;->addStatement(Lcom/itextpdf/styledxmlparser/css/CssStatement;)V

    goto :goto_2

    .line 399
    :cond_1
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->nestedAtRules:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;

    invoke-virtual {v3, v2}, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;->addStatementToBody(Lcom/itextpdf/styledxmlparser/css/CssStatement;)V

    .line 401
    .end local v2    # "ruleSet":Lcom/itextpdf/styledxmlparser/css/CssRuleSet;
    :goto_2
    goto :goto_1

    .line 402
    :cond_2
    return-void
.end method

.method private processSemicolonAtRule(Ljava/lang/String;)V
    .locals 2
    .param p1, "ruleStr"    # Ljava/lang/String;

    .line 470
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/CssSemicolonAtRule;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/css/CssSemicolonAtRule;-><init>(Ljava/lang/String;)V

    .line 471
    .local v0, "atRule":Lcom/itextpdf/styledxmlparser/css/CssSemicolonAtRule;
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->styleSheet:Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;->addStatement(Lcom/itextpdf/styledxmlparser/css/CssStatement;)V

    .line 472
    return-void
.end method

.method private saveActiveState()V
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->currentState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->previousActiveState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    .line 372
    return-void
.end method

.method private setState(Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;)V
    .locals 0
    .param p1, "state"    # Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    .line 380
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->currentState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    .line 381
    return-void
.end method


# virtual methods
.method appendToBuffer(C)V
    .locals 1
    .param p1, "ch"    # C

    .line 197
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 198
    return-void
.end method

.method enterAtRuleBlockState()V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->atRuleBlockState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->setState(Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;)V

    .line 286
    return-void
.end method

.method enterCommentEndState()V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->commendEndState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->setState(Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;)V

    .line 236
    return-void
.end method

.method enterCommentInnerState()V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->commendInnerState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->setState(Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;)V

    .line 243
    return-void
.end method

.method enterCommentStartState()V
    .locals 1

    .line 227
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->saveActiveState()V

    .line 228
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->commentStartState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->setState(Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;)V

    .line 229
    return-void
.end method

.method enterConditionalGroupAtRuleBlockState()V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->conditionalGroupAtRuleBlockState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->setState(Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;)V

    .line 293
    return-void
.end method

.method enterPreviousActiveState()V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->previousActiveState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->setState(Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;)V

    .line 221
    return-void
.end method

.method enterPropertiesState()V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->propertiesState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->setState(Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;)V

    .line 300
    return-void
.end method

.method enterRuleState()V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->ruleState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->setState(Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;)V

    .line 250
    return-void
.end method

.method enterRuleStateBasedOnItsType()V
    .locals 1

    .line 267
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->currentAtRuleIsConditionalGroupRule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->enterConditionalGroupAtRuleBlockState()V

    goto :goto_0

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->enterAtRuleBlockState()V

    .line 272
    :goto_0
    return-void
.end method

.method enterUnknownState()V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->unknownState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->setState(Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;)V

    .line 279
    return-void
.end method

.method enterUnknownStateIfNestedBlocksFinished()V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->nestedAtRules:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->unknownState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->setState(Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;)V

    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->enterRuleStateBasedOnItsType()V

    .line 261
    :goto_0
    return-void
.end method

.method finishAtRuleBlock()V
    .locals 4

    .line 345
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->storedPropertiesWithoutSelector:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 346
    .local v0, "storedProps":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->nestedAtRules:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;

    .line 347
    .local v1, "atRule":Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;
    iget-boolean v2, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->isCurrentRuleSupported:Z

    if-eqz v2, :cond_0

    .line 348
    invoke-direct {p0, v1}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->processFinishedAtRuleBlock(Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;)V

    .line 349
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 350
    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;->addBodyCssDeclarations(Ljava/util/List;)V

    .line 353
    :cond_0
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->isCurrentRuleSupported()Z

    move-result v2

    iput-boolean v2, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->isCurrentRuleSupported:Z

    .line 354
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->buffer:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 355
    return-void
.end method

.method getBufferContents()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParsingResult()Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->styleSheet:Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    return-object v0
.end method

.method public process(C)V
    .locals 1
    .param p1, "ch"    # C

    .line 179
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->currentState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    invoke-interface {v0, p1}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;->process(C)V

    .line 180
    return-void
.end method

.method pushBlockPrecedingAtRule()V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->nestedAtRules:Ljava/util/Stack;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRuleFactory;->createNestedRule(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->storedPropertiesWithoutSelector:Ljava/util/Stack;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->isCurrentRuleSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->isCurrentRuleSupported:Z

    .line 364
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 365
    return-void
.end method

.method resetBuffer()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 214
    return-void
.end method

.method storeCurrentProperties()V
    .locals 2

    .line 314
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->isCurrentRuleSupported:Z

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->currentSelector:Ljava/lang/String;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->processProperties(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->currentSelector:Ljava/lang/String;

    .line 318
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 319
    return-void
.end method

.method storeCurrentPropertiesWithoutSelector()V
    .locals 2

    .line 325
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->isCurrentRuleSupported:Z

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->processProperties(Ljava/lang/String;)V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 329
    return-void
.end method

.method storeCurrentSelector()V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->currentSelector:Ljava/lang/String;

    .line 307
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 308
    return-void
.end method

.method storeSemicolonAtRule()V
    .locals 2

    .line 335
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->isCurrentRuleSupported:Z

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->processSemicolonAtRule(Ljava/lang/String;)V

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 339
    return-void
.end method
